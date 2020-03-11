import argparse
import os
import time
from serial import Serial
from array import array


def main():
    parser = argparse.ArgumentParser(
        description='Load application software via UART'
    )
    parser.add_argument(
        '-b', '--base',
        dest='base', type=str, required=True,
        help='Base address where the software will be loaded, usually in RAM. '
             'Supply in hexadecimal format. Minimum 0x0000, maximum 0xFFFF.'
    )
    parser.add_argument(
        '-e', '--exec',
        dest='exec', action='store_true', default=False,
        help='After loading, execute from base address'
    )
    parser.add_argument(
        'filename',
        type=str,
        help='Filename that should be loaded. Must be a binary file, not hex.'
    )

    args = parser.parse_args()

    base = int(args.base, 16)
    exec = args.exec
    filename = args.filename

    if not (0 <= base <= 0xFFFF):
        raise ValueError(
            'Base has invalid value. Minimum 0x0000, maximum 0xFFFF.'
        )

    filesize = os.stat(filename).st_size

    if not (1 <= filesize <= 0xFFFF):
        raise ValueError(
            'Size of file is invalid. Minimum 1 byte, maximum 65536.'
        )

    if base + filesize > 0xFFFF:
        raise ValueError(
            'Base address plus file size would cause an address overflow.'
        )

    base_le = (base & 0xFF) << 8 | (base & 0xFF00) >> 8
    filesize_le = (filesize & 0xFF) << 8 | (filesize & 0xFF00) >> 8

    rom = array('B')

    with open(filename, 'rb') as f:
        rom.fromfile(f, filesize)

    data = [
        3,
        (filesize & 0xFF), (filesize & 0xFF00) >> 8,
        (base & 0xFF), (base & 0xFF00) >> 8
    ] + list(rom)

    if exec is True:
        data += [
            4,
            (base & 0xFF), (base & 0xFF00) >> 8
        ]

    data = bytes(data)

    ser = Serial(
        '/dev/cu.usbserial-FT94JP1H',
        baudrate=57600,
        timeout=1
    )

    if ser.in_waiting > 0:
        ser.read(size=ser.in_waiting)

    # Wait for serial loader to be available
    print('Waiting for serial loader availability: ', end='', flush=True)

    failed = 0

    while True:
        ser.write(bytes([0x01]))
        ser.flush()

        try:
            if ord(ser.read(size=1)) == 64:
                print(' OK')
                break
        except TypeError:
            failed += 1

            print('.', end='', flush=True)

            if failed == 10:
                print(' Failed after too many attempts')

                return

    start = time.time()

    print('Transferring %d bytes to 0x%4.4X: ' % (filesize, base), end='', flush=True)

    ser.write(data)
    ser.flush()

    failed = 0

    while True:
        try:
             if ord(ser.read(size=1)) == 33:
                break
        except TypeError:
            failed += 1

            print('.', end='', flush=True)

            if failed == 5:
                print(' Failed: transfer not acknowledged')

                return

    duration = time.time() - start

    print(' Done in %.3fs' % duration)

    failed = 0

    if exec is True:
        print('Executing from 0x%4.4X: ' % base, end='', flush=True)

        while True:
            try:
                if ord(ser.read(size=1)) == 43:
                    break
            except TypeError:
                failed += 1

                print('.', end='', flush=True)

                if failed == 2:
                    print(' Failed: execution not acknowledged')

                    return

        print(' OK')

    ser.close()

    return


if __name__ == '__main__':
    main()

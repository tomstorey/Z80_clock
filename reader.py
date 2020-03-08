import argparse
import os
from serial import Serial


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
        '-s', '--size',
        dest='size', type=str, required=True,
        help='Number of bytes that should be read. '
             'Supply in hexadecimal format. Minimum 0x0000, maximum 0xFFFF.'
    )
    # parser.add_argument(
    #     'filename',
    #     type=str,
    #     help='Filename that should be loaded. Must be a binary file, not hex.'
    # )

    args = parser.parse_args()

    base = int(args.base, 16)
    size = int(args.size, 16)
    # filename = args.filename

    if not (0 <= base <= 0xFFFF):
        raise ValueError(
            'Base has invalid value. Minimum 0x0000, maximum 0xFFFF.'
        )

    # filesize = os.stat(filename).st_size

    if not (1 <= size <= 0xFFFF):
        raise ValueError(
            'Size of file is invalid. Minimum 1 byte, maximum 65536.'
        )

    if base + size > 0xFFFF:
        raise ValueError(
            'Base address plus size would cause an address overflow.'
        )

    base_le = (base & 0xFF) << 8 | (base & 0xFF00) >> 8
    size_le = (size & 0xFF) << 8 | (size & 0xFF00) >> 8

    data = [
        2,
        (size & 0xFF), (size & 0xFF00) >> 8,
        (base & 0xFF), (base & 0xFF00) >> 8
    ]

    ser = Serial(
        '/dev/cu.usbserial-FT94JP1H',
        baudrate=57600,
        rtscts=1
    )
    # ser.open()
    ser.write(data)
    ser.flush()

    read = 0

    while True:
        b = ser.read(1)
        print(b)
        read += 1

        if read == size:
            break

    ser.close()


if __name__ == '__main__':
    main()

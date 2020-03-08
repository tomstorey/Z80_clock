import argparse
from serial import Serial


def main():
    parser = argparse.ArgumentParser(
        description='Send a byte over UART'
    )
    parser.add_argument(
        '-r', '--rx',
        dest='rx', action='store_true', default=False,
        help='Wait for RX data and print it back'
    )
    parser.add_argument(
        'val',
        type=str,
        help='Byte to send, in hexadecimal format'
    )

    args = parser.parse_args()

    rx = args.rx
    val = int(args.val, 16)

    if not 0 <= val <= 255:
        raise ValueError('Value is out of range: min 0x00 max 0xFF')

    data = bytes([val])

    ser = Serial(
        '/dev/cu.usbserial-FT94JP1H',
        baudrate=57600,
        timeout=1
    )
    print(ser.write(data))
    ser.flush()

    if rx is not True:
        ser.close()

        return

    data = []

    while True:
        try:
            data.append(ord(ser.read(size=1)))
        except TypeError:
            break

    print(data)

    ser.close()

    return


if __name__ == '__main__':
    main()

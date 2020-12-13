import argparse
import time
from serial import Serial


def main():
    parser = argparse.ArgumentParser(
        description='Load application software via UART'
    )
    parser.add_argument(
        '-t', '--target',
        dest='target', type=str, required=True,
        help='Address to begin executing from. Supply in hexadecimal format. '
              'Minimum 0x0000, maximum 0xFFFF.'
    )

    args = parser.parse_args()

    target = int(args.target, 16)

    if not (0 <= target <= 0xFFFF):
        raise ValueError(
            'Target has invalid value. Minimum 0x0000, maximum 0xFFFF.'
        )

    data = bytes([
        4,
        (target & 0xFF), (target & 0xFF00) >> 8
    ])

    ser = Serial(
        '/dev/cu.usbserial-FT94JP1H',
        baudrate=57600
    )
    ser.write(data)
    ser.flush()
    ser.close()

    return











if __name__ == '__main__':
    main()

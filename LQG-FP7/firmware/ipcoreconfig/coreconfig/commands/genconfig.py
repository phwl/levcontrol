
import argparse
import sys
from enum import Enum
from bitarray import bitarray

from cclib import IPCore, matlab_to_config

class ConfigEncoding(Enum):
    HEX = "hex"
    BIN = "bin"
    BASE64 = "base64"

    def __str__(self):
        return self.value
    
class ConfigInputType(Enum):
    # JSON input, but with MATLAB-specific keys as specified in the IPIO attributes.
    MATLAB_JSON = "matlab-json"
    # JSON input, but with generic keys equivalent to the IO keys.
    #JSON = "json"

    def __str__(self):
        return self.value

def genconfig(args: argparse.Namespace, ip_core: IPCore) -> None:
    if args.input_file == "-":
        input_data = sys.stdin.read()
    else:
        with open(args.input_file, "r") as infile:
            input_data = infile.read()

    match args.type:
        case ConfigInputType.MATLAB_JSON:
            import json
            try:
                input_data = json.loads(input_data)
            except json.JSONDecodeError as e:
                print(f"Error: Failed to parse input data as JSON: {e}", file=sys.stderr)
                exit(1)
            
            try:
                config_bits = matlab_to_config(ip_core, input_data)
            except Exception as e:
                print(f"Error: Failed to convert MATLAB data to configuration bits: {e}", file=sys.stderr)
                exit(1)

    # Conver the bits into the raw output bytes of the desired size.
    actual_size_bits = len(config_bits)
    requested_size_bits = args.osize*8 if args.osize > 0 else actual_size_bits

    requested_size_bits = (requested_size_bits + 7) // 8 * 8  # Round up to the next byte boundary.
    out_size = requested_size_bits // 8

    out = bytearray(out_size)
    for i in range(out_size):
        bits_start = i*8
        if bits_start >= len(config_bits):
            break
        bits = config_bits[bits_start:bits_start + 8]

        if len(bits) < 8:
            bits += bitarray(8 - len(bits))

        out[i] = bits[::-1].tobytes()[0]

    out = bytes(out)

    # Depending on the output encoding, we may need to convert the output.
    match args.encoding:
        case ConfigEncoding.HEX:
            out_encoded = out.hex()
        case ConfigEncoding.BIN:
            out_encoded = out
        case ConfigEncoding.BASE64:
            import base64
            out_encoded = base64.b64encode(out).decode('utf-8')

    assert isinstance(out_encoded, (str, bytes)), "Output must be a string or bytes."

    if args.output_file == "-":
        if isinstance(out_encoded, bytes):
            sys.stdout.buffer.write(out_encoded)
            sys.stdout.buffer.flush()
        else:
            sys.stdout.write(out_encoded)
    else:
        with open(args.output_file, "w" if isinstance(out_encoded, str) else "wb") as outfile:
            outfile.write(out_encoded)
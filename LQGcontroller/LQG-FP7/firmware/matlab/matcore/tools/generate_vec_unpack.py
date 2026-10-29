#!/usr/bin/env python3

# Generates a Vivado source file for unpacking a N-vector of M-bit values into
# N M-bit wires.

import sys

def usage():
    print(f"{sys.argv[0]} <N> <M> <outfile>")

def generate_unpack(N, M):
    out = ""

    out += "module unpack(\n"
    # Generate input and output ports
    out += f"    input [{N * M - 1}:0] in,\n"
    for i in range(N):
        out += f"    output [{M - 1}:0] out_{i}"
        if i != N-1:
            out += ","
        out += "\n"
    out += ");\n"

    # Generate unpacking assignments

    for i in range(N):
        out += f"    assign out_{i} = in[{(i + 1) * M - 1}:{i * M}];\n"

    out += "endmodule\n"
    return out

def main():
    if len(sys.argv) != 4:
        usage()
        return 1
    
    try:
        N = int(sys.argv[1])
        M = int(sys.argv[2])
    except ValueError:
        print("N and M must be integers")
        usage()
        return 1
    
    if N <= 0 or M <= 0:
        print("N and M must be positive integers")
        usage()
        return 1
    
    outfile = sys.argv[3]
    
    print(f"Generating unpacking for {N} vectors of {M} bits")
    print(f"IN-size: {N * M} bits")
    print(f"OUT-size: {N} * {M} bits")
    print(f"Output file: {outfile}")

    with open(outfile, "w") as f:
        f.write(generate_unpack(N, M))

    return 0

if __name__ == "__main__":
    exit(main())
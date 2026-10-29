#!/usr/bin/env python3

POLY = 0x121
BITS = 10
START = 0x3F
MASK = (1 << BITS) - 1

lfsr = START

print(lfsr)

for _ in range(10):
    #lsb = lfsr & 1
    #lfsr >>= 1
    #if lsb:
    #    lfsr = lfsr ^ POLY ^ MASK

    msb = (lfsr >> (BITS - 1)) & 1
    lfsr = (lfsr << 1) & MASK
    lfsr |= 1
    if not msb:
        lfsr = lfsr ^ POLY

    print(lfsr)

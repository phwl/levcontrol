#!/usr/bin/env python3

from sage.all import *

POLY = 0xa011
START = 0xaead
BITS = 16

NUM_SAMPLES = 0

F = GF(2)
R_F2 = PolynomialRing(F, "x")
mod_poly = R_F2(Integer(POLY | (1 << BITS)).digits(2))

#R_POLY = GF(2**BITS, "z", modulus=R_F2(Integer(POLY | (1 << BITS)).digits(2)))
R_POLY = F.extension(mod_poly, "z")
z = R_POLY.gen()

series = [START]

a = R_POLY.fetch_int(int(START))
for _ in range(40):
    a *= z
    series.append(int(a.integer_representation()))


print(series)
#!/usr/bin/env python3

channels = []

for i in range(2):
    for j in range(14):
        channels.append((f"lqg_uk_{i}", j))

for i in range(2):
    for j in range(14):
        channels.append((f"lqg_yk_{i}", j))

for i in range(7):
    for j in range(25):
        channels.append((f"lqg_xkhat_{i}", j))

dma_chans = [
    "dma_channel_a",
    "dma_channel_b",
    "dma_channel_c",
    "dma_channel_d",
    "dma_channel_e",
    "dma_channel_f",
    "dma_channel_g",
    "dma_channel_h"
]

output = ""
signal_idx = 0

for idx, (module, chan) in enumerate(channels):
    subdix = signal_idx % 32
    wordidx = signal_idx // 32
    output += f"assign {dma_chans[wordidx]}[{subdix}] = {module}[{chan}];\n"
    signal_idx += 1

print(output)
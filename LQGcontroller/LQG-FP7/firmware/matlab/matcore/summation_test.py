#!/usr/bin/env python3

import numpy as np


def calc(summands):
    num_stages = int(np.ceil(np.log2(len(summands))))
    results_len = 2*(2**num_stages-1)+1

    print("=========")
    print(f"{len(summands) = }")
    print(f"{num_stages = }")
    print(f"{results_len = }")

    results = []
    results.extend(summands)
    results.extend([0] * (results_len - len(summands)))

    prev_stage_idx = 0
    stage_summands = len(summands)
    current_stage_idx = stage_summands

    flip_flag = 0

    while stage_summands > 1:
        stage_idx_ctr = 0

        for i in range(0,stage_summands-1,2):
            if flip_flag == 0:
                results[current_stage_idx + stage_idx_ctr] = results[prev_stage_idx + i] + results[prev_stage_idx + i + 1]
            else:
                results[current_stage_idx + stage_idx_ctr] = results[current_stage_idx - 1 - i] + results[current_stage_idx - 1 - (i + 1)]
            stage_idx_ctr += 1

        if stage_summands % 2 != 0:
            if flip_flag == 0:
                results[current_stage_idx + stage_idx_ctr] = results[prev_stage_idx + stage_summands - 1]
            else:
                results[current_stage_idx + stage_idx_ctr] = results[prev_stage_idx]
            stage_idx_ctr += 1
            flip_flag = 1-flip_flag

        stage_summands = stage_idx_ctr
        prev_stage_idx = current_stage_idx
        current_stage_idx += stage_summands

    return results[current_stage_idx-1]

print(calc([1,2,3,4,5]))

for i in range(160):
    summands = list(np.random.randint(0, 100, i+1))

    sum_test = calc(summands)
    sum_true = sum(summands)

    assert(sum_test == sum_true)
    print(sum_test, sum_true)
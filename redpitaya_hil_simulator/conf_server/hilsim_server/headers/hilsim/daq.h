
#pragma once

#include <stdint.h>

#define DAQ_FRAME_RATE      125000000UL

enum daq_trigger
{
    DAQ_TRIGGER_SW = 0,
    DAQ_TRIGGER_HW = 1
};

int daq_init();

int daq_configure(uint32_t num_frames, uint32_t frame_stride, uint8_t channel_mask, enum daq_trigger trigger);
int daq_prime();
int daq_is_complete();
int daq_send_to_fd(int fd, size_t offset, size_t length);
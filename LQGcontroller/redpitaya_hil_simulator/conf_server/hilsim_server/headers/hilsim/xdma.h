/*******************************************************************************
*
*   xdma.h
*   ======
*
*   Simple DMA interface for Xilinx DMA IP-Core.
*
*   Date        Rev.No. Author      Description
*   ----------------------------------------------------------------------------
*   09.01.2025  v1.0    jbd         Created.
*   ----------------------------------------------------------------------------
*
*   Author Glossary:
*    - jbd : Johannes Berndorfer, ACIN, Technische Universität Wien
*
*   Copyright (c) 2024 Johannes Berndorfer
*
*******************************************************************************/

#pragma once

// IP-Core Documentation:
// - https://docs.xilinx.com/access/sources/framemaker/map?Doc_Version=7.1%20English&url=pg021_axi_dma

#include <stdint.h>

// Register offsets for XILINX DMA IP Core
#define S2MM_CONTROL_REGISTER       0x30
#define S2MM_STATUS_REGISTER        0x34
#define S2MM_DESTINATION_ADDRESS    0x48
#define S2MM_LENGTH                 0x58

#define S2MM_CURDESC                0x38
#define S2MM_CURDESC_MSB            0x3C
#define S2MM_TAILDESC               0x40
#define S2MM_TAILDESC_MSB           0x44


// Max packet length for DMA with Scatter-Gather engine 
#define MAX_PACKET_SIZE ((uint32_t)(67108863))  

#if defined(RP_Z20_125)
#define RAM_START_ADDR      0x10000000 // Starting address of reserved RAM space
#define RAM_END_ADDR        0x1FFFFFFF // Last address of reserved RAM space
#elif defined(RP_Z20_125_V2)
#define RAM_START_ADDR      0x20000000 // Starting address of reserved RAM space
#define RAM_END_ADDR        0x3FFFFFFF // Last address of reserved RAM space
#else
#error "Unsupported Red Pitaya model! Please define RAM_START_ADDR and RAM_END_ADDR for the detected model."
#endif

#define BRAM_OFFSET         0x40000000 // BRAM for storing descriptors
#define THROTTLE_REG_ADDR   0x43C10000 // DMA throttle
#define DMA_AXI_ADDR        0x40400000 // Xilinx DMA IP Core

unsigned int dma_set(unsigned int *dma_virtual_address, int offset, unsigned int value);
unsigned int dma_get(unsigned int *dma_virtual_address, int offset);
int dma_init(unsigned int *dma_virtual_address, unsigned int *cfg_reg_address);

uint32_t DMATransferBuildDescriptors(unsigned int *BRAM_address, uint32_t words_to_meas);
void DMATransferSetDescriptor(unsigned int *dma_virtual_address, uint32_t descriptor[], int bd_rank);
uint32_t DMATransferConfig(unsigned int *cfg_address, unsigned int *dma_virtual_address,
                           unsigned int *BRAM_address, uint32_t rec_frames, uint32_t rec_decimation,
                           uint8_t rec_channels, uint8_t trigger_src);
void DMATransferPrime(unsigned int *cfg_address, uint8_t trigger_src);
uint8_t DMATransferWaitForComplete(unsigned int *cfg_address, unsigned int *dma_virtual_address,
                                   unsigned int *BRAM_address, uint32_t last_desc_addr, uint8_t trigger_src,
                                   double hw_trig_timeout_secs);

void dma_s2mm_status(unsigned int *dma_virtual_address);
int dma_s2mm_sync(unsigned int *dma_virtual_address, uint32_t retries);
int dma_s2mm_sync_inf(unsigned int *dma_virtual_address, unsigned int *BRAM_address,
                      uint32_t tail_desc_addr, double timeout_secs);

int dma_s2mm_check_sync(unsigned int *dma_virtual_address);

/*
// Register Address Map for Scatter/Gather Mode (Table 4)
#define XDMA_MM2S_DMACR         0x00    // MM2S DMA Control Register
#define XDMA_MM2S_DMASR         0x04    // MM2S DMA Status Register
#define XDMA_MM2S_CURDESC       0x08    // MM2S Current Descriptor Pointer, lower 32 bits.
#define XDMA_MM2S_CURDESC_MSB   0x0C    // MM2S Current Descriptor Pointer, upper 32 bits.
#define XDMA_MM2S_TAILDESC      0x10    // MM2S Tail Descriptor Pointer, lower 32 bits.
#define XDMA_MM2S_TAILDESC_MSB  0x14    // MM2S Tail Descriptor Pointer, upper 32 bits.
#define XDMA_SG_CTL             0x2C    // Scatter/Gather User and Cache (only in multichannel mode)
#define XDMA_S2MM_DMACR         0x30    // S2MM DMA Control Register
#define XDMA_S2MM_DMASR         0x34    // S2MM DMA Status Register
#define XDMA_S2MM_CURDESC       0x38    // S2MM Current Descriptor Pointer, lower 32 bits.
#define XDMA_S2MM_CURDESC_MSB   0x3C    // S2MM Current Descriptor Pointer, upper 32 bits.
#define XDMA_S2MM_TAILDESC      0x40    // S2MM Tail Descriptor Pointer, lower 32 bits.
#define XDMA_S2MM_TAILDESC_MSB  0x44    // S2MM Tail Descriptor Pointer, upper 32 bits.

// Status Codes.
#define XDMA_EOK                0
#define XDMA_EMAP               1       // Invalid address space mapping.

struct xdma_s
{
    void *base_addr;
};

int xdma_write_reg(struct xdma_s *hxdma, uint32_t reg_offset, uint32_t word);
int xdma_read_reg(struct xdma_s *hxdma, uint32_t reg_offset, uint32_t *word_out);

int xdma_init(struct xdma_s *hxdma);
*/
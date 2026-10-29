#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>
#include <sys/socket.h>
#include <arpa/inet.h>

#include <hilsim/daq.h>
#include <hilsim/xdma.h>

void *g_xdma = NULL;
void *g_xdma_bram = NULL;
void *g_rec_ram = NULL;
void *g_dma_throttle = NULL;

enum daq_trigger g_trigger = DAQ_TRIGGER_SW;

int daq_init()
{
    int fd = open("/dev/mem", O_RDWR | O_SYNC);
    if (fd <= 0)
    {
        fprintf(stderr, "Failed to open /dev/mem.\n");
        return -1;
    }

    g_xdma = mmap(NULL, 0xffff, PROT_READ | PROT_WRITE, MAP_SHARED, fd, DMA_AXI_ADDR);
    if (!g_xdma)
    {
        fprintf(stderr, "Failed to mmap XDMA.\n");
        goto error;
    }

    g_xdma_bram = mmap(NULL, 0x1fff, PROT_READ | PROT_WRITE, MAP_SHARED, fd, BRAM_OFFSET);
    if (!g_xdma_bram)
    {
        fprintf(stderr, "Failed to mmap XDMA BRAM.\n");
        goto error;
    }

    g_rec_ram = mmap(NULL, 0x0fffffff, PROT_READ | PROT_WRITE, MAP_SHARED, fd, RAM_START_ADDR);
    if (!g_rec_ram)
    {
        fprintf(stderr, "Failed to mmap recording RAM.\n");
        goto error;
    }

    g_dma_throttle = mmap(NULL, 0x03ff, PROT_READ | PROT_WRITE, MAP_SHARED, fd, THROTTLE_REG_ADDR);
    if (!g_dma_throttle)
    {
        fprintf(stderr, "Failed to mmap DMA throttle register.\n");
        goto error;
    }

    close(fd);
    return 0;

error:
    if (g_xdma) munmap(g_xdma, 0xffff);
    if (g_xdma_bram) munmap(g_xdma_bram, 0x1fff);
    if (g_rec_ram) munmap(g_rec_ram, 0x0fffffff);
    if (g_dma_throttle) munmap(g_dma_throttle, 0x03ff);
    close(fd);
    return -1;
}

int daq_configure(uint32_t num_frames, uint32_t frame_stride, uint8_t channel_mask, enum daq_trigger trigger)
{
    uint32_t last_desc_offs = DMATransferConfig(
        g_dma_throttle, g_xdma, g_xdma_bram,
        num_frames, frame_stride, channel_mask, (uint8_t) trigger);

    if (0 == last_desc_offs)
    {
        fprintf(stderr, "Failed to configure DMA transfer.\n");
        return -1;
    }

    g_trigger = trigger;
    
    return 0;
}

int daq_prime()
{
    DMATransferPrime(g_dma_throttle, (uint8_t) g_trigger);
    return 0;
}

int daq_is_complete()
{
    return dma_s2mm_check_sync(g_xdma);
}

int daq_send_to_fd(int fd, size_t offset, size_t length)
{
    int rc;

    // Check offset and length for sanity.
    if (offset + length > 0x0fffffff)
    {
        fprintf(stderr, "Invalid offset and length for sending data to socket.\n");
        // Send zero data.
        offset = 0;
        length = 0;
    }

    // Send size
    uint8_t size_buf[4] = {0};
    *(uint32_t *) size_buf = htonl((uint32_t) length);
    rc = send(fd, size_buf, sizeof(size_buf), 0);
    if (rc != sizeof(size_buf))
    {
        fprintf(stderr, "Failed to send data size to socket. Got error %d.\n", rc);
    }

    if (length == 0) return 0;

    // Send actual data.
    rc = send(fd, g_rec_ram + offset, length, 0);
    if (rc != length)
    {
        fprintf(stderr, "Failed to send data to socket. Got error %d.\n", rc);
    }

    return 0;
}
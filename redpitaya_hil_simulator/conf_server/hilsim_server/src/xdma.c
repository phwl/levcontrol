#define _GNU_SOURCE

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <sys/ioctl.h>
#include <errno.h>
#include <time.h>

#include <hilsim/xdma.h>

/*
int xdma_write_reg(struct xdma_s *hxdma, uint32_t reg_offset, uint32_t word)
{
    if (!hxdma->base_addr)
        return -XDMA_EMAP;

    *(uint32_t *)(hxdma->base_addr + reg_offset) = word;
    return 0;
}

int xdma_read_reg(struct xdma_s *hxdma, uint32_t reg_offset, uint32_t *word_out)
{
    if (!hxdma->base_addr)
        return -XDMA_EMAP;
    
    *word_out = *(uint32_t *)(hxdma->base_addr + reg_offset);
    return 0;
}
*/

static uint32_t countSetBits(uint32_t num){
    /* Count number of set bits in 32 unsigned integer
        num - number with set bits to count
        
        return - uint32_t number of set bits
    */
    unsigned int count = 0;
    while (num) {
        count += num & 1;
        num >>= 1;
    }
    return count;
}

unsigned int dma_set(unsigned int *dma_virtual_address, int offset, unsigned int value)
{
    dma_virtual_address[offset >> 2] = value;
}

unsigned int dma_get(unsigned int *dma_virtual_address, int offset)
{
    return dma_virtual_address[offset >> 2];
}

void dma_s2mm_status(unsigned int *dma_virtual_address)
{
    unsigned int status = dma_get(dma_virtual_address, S2MM_STATUS_REGISTER);
    printf("Stream to memory-mapped status (0x%08x@0x%02x):", status, S2MM_STATUS_REGISTER);
    if (status & 0x00000001)
        printf(" halted");
    else
        printf(" running");
    if (status & 0x00000002)
        printf(" idle");
    if (status & 0x00000008)
        printf(" SGIncld");
    if (status & 0x00000010)
        printf(" DMAIntErr");
    if (status & 0x00000020)
        printf(" DMASlvErr");
    if (status & 0x00000040)
        printf(" DMADecErr");
    if (status & 0x00000100)
        printf(" SGIntErr");
    if (status & 0x00000200)
        printf(" SGSlvErr");
    if (status & 0x00000400)
        printf(" SGDecErr");
    if (status & 0x00001000)
        printf(" IOC_Irq");
    if (status & 0x00002000)
        printf(" Dly_Irq");
    if (status & 0x00004000)
        printf(" Err_Irq");
    printf("\n");
}

int dma_s2mm_sync(unsigned int *dma_virtual_address, uint32_t retries)
/* OBSOLETE! use dma_s2mm_sync_inf
*/
{
    unsigned int s2mm_status = dma_get(dma_virtual_address, S2MM_STATUS_REGISTER);
    while (!(s2mm_status & 1 << 12) || !(s2mm_status & 1 << 1))
    {
        dma_s2mm_status(dma_virtual_address);
        s2mm_status = dma_get(dma_virtual_address, S2MM_STATUS_REGISTER);
        retries = retries - 1;
        if (retries == 0)
        {
            return -1;
        }
        usleep(500000);
    }
    return 0;
}

int dma_s2mm_sync_inf(unsigned int *dma_virtual_address,
                      unsigned int *BRAM_address,
                      uint32_t tail_desc_addr,
                      double timeout_secs){
    /* Function to check whether DMA transfer with - Scatter Gather engine finished
        
       if timeout_secs is larger than 0.0, than function will return -9 upon timeout,
       i.e. if DMA transfer is not sucesfully terminated (but neither failed) within
       specified time period.

    */
    clock_t start_time = clock();
    clock_t comp_time;    

    uint32_t bd_status[32] = {0};
    unsigned int s2mm_status = dma_get(dma_virtual_address, S2MM_STATUS_REGISTER);
    //while (!(s2mm_status & 1 << 12) || !(s2mm_status & 1 << 1)) // wait for IOC_IRq & Halted
    while (!(s2mm_status & 1 << 12)) // wait for IOC_IRq
    {
        //dma_s2mm_status(dma_virtual_address);
        //fflush(stdout);
        //usleep(100000);
        s2mm_status = dma_get(dma_virtual_address, S2MM_STATUS_REGISTER);
        if (s2mm_status & 0x00000010)
            return -1;
        if (s2mm_status & 0x00000020)
            return -1;
        if (s2mm_status & 0x00000040)
            return -1;
        if (s2mm_status & 0x00000100)
            return -1;
        if (s2mm_status & 0x00000200)
            return -1;
        if (s2mm_status & 0x00000400)
            return -1;

        // Cycle through descriptors to check for changes
        for(uint32_t desc_addr = 0; desc_addr <= (tail_desc_addr-BRAM_OFFSET); desc_addr+=0x40){
            
            uint32_t bd_status_new = *((uint32_t *)(BRAM_address+((desc_addr+0x1C)>>2)));

            if (bd_status[desc_addr/0x40] != bd_status_new){
                bd_status[desc_addr/0x40] = bd_status_new;
                printf("Descriptor @%02x = %08x, ",desc_addr, bd_status_new);
                if (bd_status_new & 0x80000000)
                    printf(" Cmplt");
                if (bd_status_new & 0x08000000)
                    printf(" RXSOF");
                if (bd_status_new & 0x04000000)
                    printf(" RXEOF");
                if (bd_status_new & 0x40000000){
                    printf(" DMADecErr");
                    return -1;
                }
                if (bd_status_new & 0x20000000){
                    printf(" DMASlvErr");
                    return -1;
                }
                if (bd_status_new & 0x10000000){
                    printf(" DMAIntErr");
                    return -1;
                }
                printf("\n");
                fflush(stdout);
                //usleep(100000);
            }
        }

        //Check for timeout
        if(timeout_secs > 0.0){
            comp_time = clock();

            double time_elapsed = ((double)(comp_time - start_time))/CLOCKS_PER_SEC;
            if(time_elapsed > timeout_secs){
                printf("DMA sync timed out\n");
                fflush(stdout);
                return -9; //Waiting timeout 
            }
        }
              
    }
    return 0;
}

int dma_s2mm_check_sync(unsigned int *dma_virtual_address)
{
    const unsigned int s2mm_status = dma_get(dma_virtual_address, S2MM_STATUS_REGISTER);
    // check IOC_Irq
    return (s2mm_status & 1 << 12);
}

int dma_init(unsigned int *dma_virtual_address, unsigned int *cfg_reg_address)
{
    
    *((uint32_t *)(cfg_reg_address)) = 0; // trigger = 0
    *((uint32_t *)(cfg_reg_address+1)) = 1; // set reset
    *((uint32_t *)(cfg_reg_address+2)) = 0; // Frames
    *((uint32_t *)(cfg_reg_address+3)) = 0; // decimation
    *((uint32_t *)(cfg_reg_address+4)) = 0; // Trigger source
    *((uint32_t *)(cfg_reg_address+5)) = 0b00000011; // Channel selection mask
    printf("Resetting DMA\n");
    dma_set(dma_virtual_address, S2MM_CONTROL_REGISTER, 4);
    dma_s2mm_status(dma_virtual_address);
    printf("Halting DMA\n");
    dma_set(dma_virtual_address, S2MM_CONTROL_REGISTER, 0);
    dma_set(dma_virtual_address, S2MM_CURDESC_MSB, 0);
    dma_set(dma_virtual_address, S2MM_CURDESC, 0);
    dma_set(dma_virtual_address, S2MM_TAILDESC_MSB, 0);
    dma_set(dma_virtual_address, S2MM_TAILDESC, 0); 

    return 0;

}

void DMATransferSetDescriptor(unsigned int *dma_virtual_address, uint32_t descriptor[], int bd_rank)
{
    for (int i = 0; i <= 7; i++)
    {
        dma_virtual_address[i + (0x10 * bd_rank)] = descriptor[i]; //0x40, 0x80 ... 16 word aligment
    }
}

uint32_t DMATransferBuildDescriptors(unsigned int * BRAM_address, uint32_t words_to_meas){
    int packets = (words_to_meas*4)/MAX_PACKET_SIZE;
    uint32_t bytes_to_meas = words_to_meas*4;
    uint32_t remaining_bytes = words_to_meas*4;
    uint32_t pack_len = 0;
    uint8_t first_desc = 1;
    uint8_t last_desc = 0;
    uint32_t last_desc_addr = 0;
    uint32_t bytes_meased = 0; // bytes already measured

    uint8_t pid = 0;
    do{
        if(remaining_bytes > MAX_PACKET_SIZE){
            last_desc = 0;
            bytes_to_meas = MAX_PACKET_SIZE;
        }else{
            last_desc = 1;
            bytes_to_meas = remaining_bytes;
        }

        uint32_t temp_descriptor[8] = {};
        temp_descriptor[0] = BRAM_OFFSET+((pid+1)*0x40);
        temp_descriptor[1] = 0;
        temp_descriptor[2] = RAM_START_ADDR+bytes_meased;
        temp_descriptor[3] = 0;
        temp_descriptor[4] = 0;
        temp_descriptor[5] = 0;
        temp_descriptor[6] = (uint32_t)(bytes_to_meas)
                             | (uint32_t)(last_desc<<26)
                             | (uint32_t)(first_desc<<27);
        
        // HACK
        temp_descriptor[6] = MAX_PACKET_SIZE
                             | (uint32_t)(last_desc<<26)
                             | (uint32_t)(first_desc<<27);
        //
        temp_descriptor[7] = 0;
        if(last_desc == 1){
            temp_descriptor[0] = BRAM_OFFSET;
        }
        DMATransferSetDescriptor(BRAM_address, temp_descriptor, pid);
        
        last_desc_addr = BRAM_OFFSET+(pid*0x40);
        bytes_meased += bytes_to_meas;
        pid++;
        first_desc = 0;
        remaining_bytes-=bytes_to_meas;
    }while(remaining_bytes>0); 

    return last_desc_addr;

}

uint32_t DMATransferConfig(unsigned int *cfg_address,
                     unsigned int *dma_virtual_address,
                     unsigned int * BRAM_address,
                     uint32_t rec_frames,
                     uint32_t rec_decimation,
                     uint8_t rec_channels,
                     uint8_t trigger_src){
    /* Use this function to prepare DMA transfer

    Arguments:
        - cfg_address - pointer to Throttle IP Core base address
        - dma_virtual_address - pointer to DMA IP Core base address
        - BRAM_address - pointer to base address where Descriptors are stored
        - rec_frames - how many data FRAMES should be recorded
        - rec_decimation - record every n-th frame
        - rec_channels - mask specifying which channels to record
                       - i.e. 0b00001011 for channels A,B,D
        - trigger_src - trigger source for throttle core
                      - 0 .. AXI register (instantenous/user)
                      - 1 .. HW signal               
    
    returns: - 0 for error
             - otherwise address of the last Scatter-Gather
               descriptor in BRAM
    */
    uint32_t frames_to_measure = rec_frames;
    uint32_t decimation = rec_decimation;
    uint32_t channel_selection = (uint32_t)(rec_channels); // Channel selection mask
    uint8_t num_of_channels = countSetBits(channel_selection);
    uint32_t words_to_measure = num_of_channels*frames_to_measure;

    if(num_of_channels == 0){
        printf("\n----------\n");
        printf("DMA Error: Zero channels set for recording!\n");
        printf("----------\n");
        return 0;
    }

    if(num_of_channels > decimation){
        printf("\n----------\n");
        printf("DMA Error: Decimation requested to %d while trying to record %d channels\n" 
               "Decimation has to be at least equal to number of channels\n", decimation, num_of_channels);
        printf("----------\n");
        return 0;
    }

    if(words_to_measure*4 > (RAM_END_ADDR-RAM_START_ADDR)){
        printf("\n----------\n");
        printf("DMA Warning: Requested recording %d bytes, which exceeds upper limit of %d\n",
                words_to_measure*4, (RAM_END_ADDR-RAM_START_ADDR));
        words_to_measure = ((RAM_END_ADDR-RAM_START_ADDR)/4);
        frames_to_measure = words_to_measure/num_of_channels;
        printf("Only %d bytes (%d frames) will be recorded\n", words_to_measure*4, frames_to_measure);
        printf("----------\n");
        //return 0;
    }

    // Reset throttle and disable trigger
    *((uint32_t *)(cfg_address)) = ((uint32_t)(0));
    *((uint32_t *)(cfg_address+1)) = ((uint32_t)(1));
    dma_init(dma_virtual_address, cfg_address);

    if(trigger_src == 0){
        printf("Triggered by AXI\n");
    }else if(trigger_src == 1){
        printf("Triggered by HW signal\n");
    }else{
        printf("Wrong trigger source value!\n");
        trigger_src = 0;
    }
    *((uint32_t *)(cfg_address+2)) = 1*(frames_to_measure)-1;
    *((uint32_t *)(cfg_address+3)) = decimation-1;
    *((uint32_t *)(cfg_address+5)) = channel_selection;
    
    //__clear_cache()


    uint32_t last_desc_addr = DMATransferBuildDescriptors(BRAM_address, (uint32_t)(words_to_measure));
    printf("Prepared descriptors for %d words, decimation %d\n", (uint32_t)(1*(words_to_measure)), decimation);
    printf("Last tail descripor is: %x\n",last_desc_addr);
    fflush(stdout);
    
    printf("Starting S2MM channel with all interrupts masked...\n");
    dma_set(dma_virtual_address, S2MM_CONTROL_REGISTER, 0x0001f001);
    dma_s2mm_status(dma_virtual_address);
    fflush(stdout);
    printf("Setting descriptor\n");
    dma_set(dma_virtual_address, S2MM_CURDESC_MSB, 0);
    dma_set(dma_virtual_address, S2MM_CURDESC, BRAM_OFFSET);
    dma_s2mm_status(dma_virtual_address);
    fflush(stdout);

    dma_set(dma_virtual_address, S2MM_TAILDESC_MSB, 0);
    dma_set(dma_virtual_address, S2MM_TAILDESC, last_desc_addr);
    //dma_set(dma_virtual_address, S2MM_TAILDESC, BRAM_OFFSET);
    return last_desc_addr;
}

void DMATransferPrime(unsigned int *cfg_address, uint8_t trigger_src){
    /* 
    Use this function to prime/trigger throttle core 

    Arguments:
        - cfg_address - pointer to Throttle IP Core base address
        - trigger_src - trigger source for throttle core
                      - 0 .. AXI register (instantenous/user)
                      - 1 .. HW signal               
    
    trigger_src: 1 .. triggered by HW signal, this function unlocks throttle
                 0 .. Transfer triggered immediately via AXI-Lite interface
    */
    if(trigger_src == 1){ //triggered by HW signal (timer)
        *((uint32_t *)(cfg_address+4)) = ((uint32_t)(1)); // set trigger source to hw
        *((uint32_t *)(cfg_address+1)) = ((uint32_t)(0)); // release throttle reset
        printf("DMA primed for HW trigger\n");
    }else{ // trigger by AXI
        *((uint32_t *)(cfg_address+4)) = ((uint32_t)(0)); // set trigger source to AXI
        *((uint32_t *)(cfg_address+1)) = ((uint32_t)(0)); // release throttle reset
        *((uint32_t *)(cfg_address)) = ((uint32_t)(0)); // AXI trigger low
        *((uint32_t *)(cfg_address)) = ((uint32_t)(1)); // AXI trigger high
        *((uint32_t *)(cfg_address)) = ((uint32_t)(0)); // AXI trigger low
        printf("DMA triggered via AXI\n"); 
    }
    fflush(stdout);
}

uint8_t DMATransferWaitForComplete(unsigned int *cfg_address,
                     unsigned int *dma_virtual_address,
                     unsigned int * BRAM_address,
                     uint32_t last_desc_addr,
                     uint8_t trigger_src,
                     double hw_trig_timeout_secs){
    /*
    Arguments:
        - cfg_address - pointer to Throttle IP Core base address
        - dma_virtual_address - pointer to DMA IP Core base address
        - BRAM_address - pointer to base address where Descriptors are stored
        - last_desc_addr - Base offset of the last descriptor (in BRAM_address)
        - trigger_src - trigger source for throttle core
                      - 0 .. AXI register (instantenous/user)
                      - 1 .. HW signal        
        - hw_trig_timeout_secs - Time after which DMA transfer is considered
                                 hanging and retrigger is attempted.
                               - Use with HW signal trigger to avoid hanging DMA 
     
    Use this function to wait until DMA transfer is complete

    Set hw_trig_timeout_secs to 0 to set timeout time to infinity

    If waiting for finished transfer to DMA times out, this function
    will attempt to retrigger throttle via AXI register. This should 
    happen only when throttle core is configured for HW trigger and
    this trigger never arrives in specified time window.

    return: 0 .. success
            -1 .. DMA or Scatter-Gather engine error,
                  or transfer was not finished in time
                  and retrigger failed as well
    */
    dma_s2mm_status(dma_virtual_address);
    int dma_sync_return_value = dma_s2mm_sync_inf(dma_virtual_address,
                                                  BRAM_address,
                                                  last_desc_addr,
                                                  hw_trig_timeout_secs);

    //if(dma_s2mm_sync_inf(dma_virtual_address, BRAM_address, last_desc_addr) < 0){
    switch(dma_sync_return_value){
        case -1 :
            printf("\n----------\n");
            printf("DMA_transfer failed\n");
            printf("----------\n");
            dma_s2mm_status(dma_virtual_address);
            fflush(stdout);
            return -1;
            break;
        case -9 :
            printf("\n----------\n");
            printf("DMA transfer timed-out, triggering again from AXI\n");
            DMATransferPrime(cfg_address, 0);
            if(dma_s2mm_sync_inf(dma_virtual_address,
                                    BRAM_address,
                                    last_desc_addr,
                                    10.0) < 0){
                printf("Retriggering not successful!\n");
                printf("----------\n");
                fflush(stdout);
                return -1;                                
            }else{
                printf("Trigger via AXI successful\n");
                printf("----------\n");
            }
            break;
        default :
            printf("DMA Transfer complete successfully\n");
    }   
    
    dma_s2mm_status(dma_virtual_address);
    //Reset active, disable trigger
    fflush(stdout);
    *((uint32_t *)(cfg_address)) = ((uint32_t)(0)); //Set trigger to low
    *((uint32_t *)(cfg_address+1)) = ((uint32_t)(1)); //Set trottle reset 
    *((uint32_t *)(cfg_address+4)) = ((uint32_t)(0)); //Set trigger source back to AXI

    dma_init(dma_virtual_address, cfg_address);
    dma_s2mm_status(dma_virtual_address);
    printf("DMA transfer operation completed\n");
    fflush(stdout);

    return 0;
}
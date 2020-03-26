#include <stdio.h>
#include <stdint.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h> 
#include "lw_h2fpga_routines/lw_h2fpga.h"
#include "spi_routines/spi.h"


int main(void) {

    void* low_weight_virtual = NULL;
    int fd = -1;

    const unsigned int LW_BRIDGE_BASE = 0xFF200000;
    const unsigned int LW_BRIDGE_SPAN = 0x00200000;

    if ((fd = open_physical(fd)) == -1) {
        return -1;
    }

    if ((low_weight_virtual = map_physical(fd, LW_BRIDGE_BASE, LW_BRIDGE_SPAN)) == NULL) {
        return -1;
    }

    uint32_t* gpio = (unsigned int*)(low_weight_virtual+0x820);
    
    *gpio = 0x1;

    while (*(unsigned int*)(low_weight_virtual+0x820) != 0x1) {

    }

    printf("GPIO: 0x%x \n", gpio);

    volatile spi_hande_t* spi_handle = (spi_hande_t*)(low_weight_virtual + SPI_BASE_OFFSET);

    const uint16_t reg_to_read = 0x13;
    const uint16_t read_bit = 0x80;

    const uint32_t tx =  ( ( (reg_to_read & 0x7F) | read_bit) << 24)  | ( ((reg_to_read & 0x7F) | read_bit) << 8) ;

    while(!(spi_handle->status & TMT) ) {

    }
    
    spi_handle -> txdata = tx;

    while(!(spi_handle->status & RRDY) ){

    }

    uint32_t rx = spi_handle -> rxdata;
    uint32_t err = spi_handle -> status;

    printf("Data is 0x%x \n", rx );
    printf("Errors are 0x%x \n", err);

    unmap_physical (low_weight_virtual, LW_BRIDGE_SPAN);
    close_physical(fd);
    return 0;
}
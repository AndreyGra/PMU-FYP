
#include "spi.h"

uint32_t spi_write_tx_buffer(spi_hande_t *spi, uint32_t data, uint32_t bit_length){
    if (bit_length > 32) {
        return -1;
    }

    spi->txdata = data;
    spi->eop_value = bit_length;

    return 0;
}




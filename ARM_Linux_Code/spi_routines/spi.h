#include <stdint.h>

#define SPI_BASE_OFFSET 0x800

typedef struct spi_hande_t{
    uint32_t rxdata;
    uint32_t txdata;
    uint32_t status;
    uint32_t control;
    uint32_t Reserved;
    uint32_t slave_select;
    uint32_t eop_value;
} __attribute__((packed)) spi_hande_t;

//Status bits
typedef enum SPI_STATUS {
    ROE  = 0x8,
    TOE  = 0x10,
    TMT  = 0x20,
    TRDY = 0x40,
    RRDY = 0x80,
    E    = 0xF0,
    EOP  = 0x100,
} SPI_STATUS;

//Control bits
typedef enum SPI_CONTROL {
    IROE  = 0xF,
    ITOE  = 0x10,
    ITRDY = 0x40,
    IRRDY = 0x80,
    IE    = 0xF0,
    IEOP  = 0x100,
} SPI_CONTROL;

uint32_t spi_write_tx_buffer(spi_hande_t *spi, uint32_t data, uint32_t bit_length);
uint32_t spi_set_control_buffer(spi_hande_t *spi, SPI_CONTROL masks);
uint32_t spi_set_status_buffer(spi_hande_t* spi, SPI_STATUS masks);

uint32_t spi_read_rx_buffer(spi_hande_t *spi);
uint32_t spi_read_status_buffer(spi_hande_t *spi);
uint32_t spi_read_control_buffer(spi_hande_t *spi);





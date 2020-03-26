INCLUDES := -I ${CURDIR}/lw_h2fpga_routines/lw_h2fpga.h
SRC := ${CURDIR}/lw_h2fpga_routines/lw_h2fpga.c

TARGET = main
OBJFILES = main.o lw_h2fpga.o adc.o spi.o

LWH2FPGA := ${CURDIR}/lw_h2fpga_routines/
ADC := ${CURDIR}/adc_routines/
SPI := ${CURDIR}/spi_routines/

CC := ${BR2_GCC}

all: $(TARGET)
	rm $(OBJFILES)

$(TARGET): $(OBJFILES)
	$(CC) -o $(TARGET) $(OBJFILES) 

main.o:
	$(CC) main.c -c 

lw_h2fpga.o:
	$(CC) -c ${LWH2FPGA}lw_h2fpga.c

adc.o:
	$(CC) -c ${ADC}adc.c

spi.o: 
	$(CC) -c $(SPI)spi.c

clean:
	rm main.o lw_h2fpga.o main spi.o adc.o

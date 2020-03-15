
module IoTOctopus_QSYS (
	hps_io_hps_io_emac0_inst_TX_CLK,
	hps_io_hps_io_emac0_inst_TXD0,
	hps_io_hps_io_emac0_inst_TXD1,
	hps_io_hps_io_emac0_inst_TXD2,
	hps_io_hps_io_emac0_inst_TXD3,
	hps_io_hps_io_emac0_inst_RXD0,
	hps_io_hps_io_emac0_inst_MDIO,
	hps_io_hps_io_emac0_inst_MDC,
	hps_io_hps_io_emac0_inst_RX_CTL,
	hps_io_hps_io_emac0_inst_TX_CTL,
	hps_io_hps_io_emac0_inst_RX_CLK,
	hps_io_hps_io_emac0_inst_RXD1,
	hps_io_hps_io_emac0_inst_RXD2,
	hps_io_hps_io_emac0_inst_RXD3,
	hps_io_hps_io_sdio_inst_CMD,
	hps_io_hps_io_sdio_inst_D0,
	hps_io_hps_io_sdio_inst_D1,
	hps_io_hps_io_sdio_inst_CLK,
	hps_io_hps_io_sdio_inst_D2,
	hps_io_hps_io_sdio_inst_D3,
	hps_io_hps_io_spim0_inst_CLK,
	hps_io_hps_io_spim0_inst_MOSI,
	hps_io_hps_io_spim0_inst_MISO,
	hps_io_hps_io_spim0_inst_SS0,
	hps_io_hps_io_uart0_inst_RX,
	hps_io_hps_io_uart0_inst_TX,
	hps_io_hps_io_i2c0_inst_SDA,
	hps_io_hps_io_i2c0_inst_SCL,
	hps_io_hps_io_i2c1_inst_SDA,
	hps_io_hps_io_i2c1_inst_SCL,
	hps_io_hps_io_can0_inst_RX,
	hps_io_hps_io_can0_inst_TX,
	hps_io_hps_io_can1_inst_RX,
	hps_io_hps_io_can1_inst_TX,
	hps_io_hps_io_gpio_inst_GPIO14,
	hps_io_hps_io_gpio_inst_GPIO15,
	hps_io_hps_io_gpio_inst_GPIO16,
	hps_io_hps_io_gpio_inst_GPIO17,
	hps_io_hps_io_gpio_inst_GPIO18,
	hps_io_hps_io_gpio_inst_GPIO19,
	hps_io_hps_io_gpio_inst_GPIO22,
	hps_io_hps_io_gpio_inst_GPIO23,
	hps_io_hps_io_gpio_inst_GPIO24,
	hps_io_hps_io_gpio_inst_GPIO25,
	hps_io_hps_io_gpio_inst_GPIO26,
	hps_io_hps_io_gpio_inst_GPIO27,
	hps_io_hps_io_gpio_inst_GPIO28,
	hps_io_hps_io_gpio_inst_GPIO29,
	hps_io_hps_io_gpio_inst_GPIO30,
	hps_io_hps_io_gpio_inst_GPIO31,
	hps_io_hps_io_gpio_inst_GPIO32,
	hps_io_hps_io_gpio_inst_GPIO33,
	hps_io_hps_io_gpio_inst_GPIO34,
	hps_io_hps_io_gpio_inst_GPIO35,
	hps_io_hps_io_gpio_inst_GPIO37,
	hps_io_hps_io_gpio_inst_GPIO40,
	hps_io_hps_io_gpio_inst_GPIO41,
	hps_io_hps_io_gpio_inst_GPIO42,
	hps_io_hps_io_gpio_inst_GPIO43,
	hps_io_hps_io_gpio_inst_GPIO44,
	hps_io_hps_io_gpio_inst_GPIO48,
	hps_io_hps_io_gpio_inst_GPIO49,
	hps_io_hps_io_gpio_inst_GPIO50,
	hps_io_hps_io_gpio_inst_GPIO55,
	hps_io_hps_io_gpio_inst_GPIO56,
	memory_mem_a,
	memory_mem_ba,
	memory_mem_ck,
	memory_mem_ck_n,
	memory_mem_cke,
	memory_mem_cs_n,
	memory_mem_ras_n,
	memory_mem_cas_n,
	memory_mem_we_n,
	memory_mem_reset_n,
	memory_mem_dq,
	memory_mem_dqs,
	memory_mem_dqs_n,
	memory_mem_odt,
	memory_mem_dm,
	memory_oct_rzqin);	

	output		hps_io_hps_io_emac0_inst_TX_CLK;
	output		hps_io_hps_io_emac0_inst_TXD0;
	output		hps_io_hps_io_emac0_inst_TXD1;
	output		hps_io_hps_io_emac0_inst_TXD2;
	output		hps_io_hps_io_emac0_inst_TXD3;
	input		hps_io_hps_io_emac0_inst_RXD0;
	inout		hps_io_hps_io_emac0_inst_MDIO;
	output		hps_io_hps_io_emac0_inst_MDC;
	input		hps_io_hps_io_emac0_inst_RX_CTL;
	output		hps_io_hps_io_emac0_inst_TX_CTL;
	input		hps_io_hps_io_emac0_inst_RX_CLK;
	input		hps_io_hps_io_emac0_inst_RXD1;
	input		hps_io_hps_io_emac0_inst_RXD2;
	input		hps_io_hps_io_emac0_inst_RXD3;
	inout		hps_io_hps_io_sdio_inst_CMD;
	inout		hps_io_hps_io_sdio_inst_D0;
	inout		hps_io_hps_io_sdio_inst_D1;
	output		hps_io_hps_io_sdio_inst_CLK;
	inout		hps_io_hps_io_sdio_inst_D2;
	inout		hps_io_hps_io_sdio_inst_D3;
	output		hps_io_hps_io_spim0_inst_CLK;
	output		hps_io_hps_io_spim0_inst_MOSI;
	input		hps_io_hps_io_spim0_inst_MISO;
	output		hps_io_hps_io_spim0_inst_SS0;
	input		hps_io_hps_io_uart0_inst_RX;
	output		hps_io_hps_io_uart0_inst_TX;
	inout		hps_io_hps_io_i2c0_inst_SDA;
	inout		hps_io_hps_io_i2c0_inst_SCL;
	inout		hps_io_hps_io_i2c1_inst_SDA;
	inout		hps_io_hps_io_i2c1_inst_SCL;
	input		hps_io_hps_io_can0_inst_RX;
	output		hps_io_hps_io_can0_inst_TX;
	input		hps_io_hps_io_can1_inst_RX;
	output		hps_io_hps_io_can1_inst_TX;
	inout		hps_io_hps_io_gpio_inst_GPIO14;
	inout		hps_io_hps_io_gpio_inst_GPIO15;
	inout		hps_io_hps_io_gpio_inst_GPIO16;
	inout		hps_io_hps_io_gpio_inst_GPIO17;
	inout		hps_io_hps_io_gpio_inst_GPIO18;
	inout		hps_io_hps_io_gpio_inst_GPIO19;
	inout		hps_io_hps_io_gpio_inst_GPIO22;
	inout		hps_io_hps_io_gpio_inst_GPIO23;
	inout		hps_io_hps_io_gpio_inst_GPIO24;
	inout		hps_io_hps_io_gpio_inst_GPIO25;
	inout		hps_io_hps_io_gpio_inst_GPIO26;
	inout		hps_io_hps_io_gpio_inst_GPIO27;
	inout		hps_io_hps_io_gpio_inst_GPIO28;
	inout		hps_io_hps_io_gpio_inst_GPIO29;
	inout		hps_io_hps_io_gpio_inst_GPIO30;
	inout		hps_io_hps_io_gpio_inst_GPIO31;
	inout		hps_io_hps_io_gpio_inst_GPIO32;
	inout		hps_io_hps_io_gpio_inst_GPIO33;
	inout		hps_io_hps_io_gpio_inst_GPIO34;
	inout		hps_io_hps_io_gpio_inst_GPIO35;
	inout		hps_io_hps_io_gpio_inst_GPIO37;
	inout		hps_io_hps_io_gpio_inst_GPIO40;
	inout		hps_io_hps_io_gpio_inst_GPIO41;
	inout		hps_io_hps_io_gpio_inst_GPIO42;
	inout		hps_io_hps_io_gpio_inst_GPIO43;
	inout		hps_io_hps_io_gpio_inst_GPIO44;
	inout		hps_io_hps_io_gpio_inst_GPIO48;
	inout		hps_io_hps_io_gpio_inst_GPIO49;
	inout		hps_io_hps_io_gpio_inst_GPIO50;
	inout		hps_io_hps_io_gpio_inst_GPIO55;
	inout		hps_io_hps_io_gpio_inst_GPIO56;
	output	[14:0]	memory_mem_a;
	output	[2:0]	memory_mem_ba;
	output		memory_mem_ck;
	output		memory_mem_ck_n;
	output		memory_mem_cke;
	output		memory_mem_cs_n;
	output		memory_mem_ras_n;
	output		memory_mem_cas_n;
	output		memory_mem_we_n;
	output		memory_mem_reset_n;
	inout	[31:0]	memory_mem_dq;
	inout	[3:0]	memory_mem_dqs;
	inout	[3:0]	memory_mem_dqs_n;
	output		memory_mem_odt;
	output	[3:0]	memory_mem_dm;
	input		memory_oct_rzqin;
endmodule

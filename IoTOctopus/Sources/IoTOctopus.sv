// Top Module Declaration
// ============================= 			
module IoTOctopus(
				
				// FPGA pin declaration
				// =====================
				// Clocks
				input 				[0:0]	FPGA_FPGA_3V3_32_768MHz_CLK_IN,
				
				// ADC
				input					[0:0]	FPGA_3V3_ADC_DCLK,
				input 				[3:0]	FPGA_3V3_ADC_DOUT,
				input					[0:0]	FPGA_3V3_ADC_nSYNC_OUT,
				input					[0:0]	FPGA_3V3_ADC_nDRDY,

            output				[0:0]	FPGA_3V3_IO_CLKOUT,
				output				[0:0]	FPGA_3V3_ADC_nRESET,
				output				[0:0]	FPGA_3V3_ADC_nSYNC_IN,
            output				[0:0]	FPGA_3V3_ADC_nSTART,
				output				[1:0]	FPGA_3V3_ADC_FORMAT,
				output				[3:0]	FPGA_3V3_ADC_MODE,
				
				//GPS
				input					[0:0]	FPGA_3V3_UART_RX,
				input					[0:0]	FPGA_3V3_GPS_1PPS,
				input 				[0:0]	FPGA_3V3_EXTERNAL_1PPS,
            output				[0:0]	FPGA_3V3_UART_TX,
				
				//ADC SPI Control
				output				[0:0] FPGA_3V3_SPI_SS0,
				output				[0:0] FPGA_3V3_SPI_CLK,
				output				[0:0]	FPGA_3V3_SPI_MOSI,
				input					[0:0]	FPGA_3V3_SPI_MISO,
	
				//================FPGA PHY1===================
				//TX
				output				[3:0]	FPGA_3V3_1G_PHY1_TX_D,
				output 				[0:0]	FPGA_3V3_1G_PHY1_TX_CLK,
				output 				[0:0]	FPGA_3V3_1G_PHY1_TX_CTL,
				
				//RX
				input					[3:0] FPGA_3V3_1G_PHY1_RX_D,
				input 				[0:0]	FPGA_3V3_1G_PHY1_RX_CLK,
				input 				[0:0] FPGA_3V3_1G_PHY1_RX_CTL,

                //Control Pins
				inout 				[0:0]	FPGA_3V3_1G_PHY1_MDIO,
				output				[0:0] FPGA_3V3_1G_PHY1_MDC,
				output 				[0:0] FPGA_3V3_1G_PHY1_nRST,
				input 				[0:0] FPGA_3V3_1G_PHY1_IRQ,

                //Clocks
				input					[0:0] FPGA_3V3_ETH_PHY1_CLK,
				input 				[0:0] FPGA_3V3_1G_PHY1_M125_CLK,

                //HPS pin declarations
                //==================================================
			    output           [14:0]HPS_DRAM_MA,
			    output           [2:0] HPS_DRAM_BA,
				 output           [0:0] HPS_DRAM_nMCS,
			    output           [0:0] HPS_DRAM_nCAS,
			    output           [0:0] HPS_DRAM_nRAS,
			    output           [0:0] HPS_DRAM_nMWE,
				 output           [0:0] HPS_DRAM_MCKE,
			    output           [0:0] HPS_DRAm_nRESET,
			    output           [0:0] HPS_DRAM_SDCLK_0_P,
			    output           [0:0] HPS_DRAM_SDCLK_0_N, 
				 output           [0:0] HPS_DRAM_MODT,  
			    input            [0:0] HPS_DRAM_RZQ,

			    inout            [31:0]HPS_DRAM_MDQ,
			    output           [3:0] HPS_DRAM_MDM,
			    inout            [3:0] HPS_DRAM_DQS0_P,
			    inout            [3:0] HPS_DRAM_DQS0_N,
				
                //UART0
             output           [0:0] HPS_3V3_UART0_TX,
             input            [0:0] HPS_3V3_UART0_RX,				
			
                //SD
             output           [0:0] HPS_3V3_SDMMC_CLK,
             inout            [0:0] HPS_3V3_SDMMC_CMD,
             inout            [0:0] HPS_3V3_SDMMC_D0,
             inout            [0:0] HPS_3V3_SDMMC_D1,
             inout            [0:0] HPS_3V3_SDMMC_D2,
             inout            [0:0] HPS_3V3_SDMMC_D3,
				
                //I2C0
             inout            [0:0] HPS_3V3_I2C0_SCL,
             inout            [0:0] HPS_3V3_I2C0_SDA,

                //I2C1
				 inout            [0:0] HPS_3V3_I2C1_SCL,
				 inout            [0:0] HPS_3V3_I2C1_SDA,
				
				//SPI
				output            [0:0] HPS_3V3_SPIM0_CLK,
				output            [0:0] HPS_3V3_SPIM0_MOSI,
				input             [0:0] HPS_3V3_SPIM0_MISO,
				input             [0:0] HPS_3V3_SPIM0_SS0,
				
				// QSPI  
				// output HPS_3V3_QSPI_SS0                      
				// output HPS_3V3_QSPI_CLK                      
				// inout HPS_3V3_QSPI_IO0                       
				// inout HPS_3V3_QSPI_IO1                       
				// inout HPS_3V3_QSPI_IO2                       
				// inout HPS_3V3_QSPI_IO3                       
				
			    // EMAC0
             output           [0:0] HPS_3V3_EMAC0_RGMII_TXD0,
             output           [0:0] HPS_3V3_EMAC0_RGMII_TXD1,
             output           [0:0] HPS_3V3_EMAC0_RGMII_TXD2,
             output           [0:0] HPS_3V3_EMAC0_RGMII_TXD3,
                        
             output           [0:0] HPS_3V3_EMAC0_RGMII_TX_CLK,
             output           [0:0] HPS_3V3_EMAC0_RGMII_TX_CTL,
                        
             input            [0:0] HPS_3V3_EMAC0_RGMII_RXD0,
             input            [0:0] HPS_3V3_EMAC0_RGMII_RXD1,
             input            [0:0] HPS_3V3_EMAC0_RGMII_RXD2,
             input            [0:0] HPS_3V3_EMAC0_RGMII_RXD3,
                        
             input            [0:0] HPS_3V3_EMAC0_RGMII_RX_CLK,
             input            [0:0] HPS_3V3_EMAC0_RGMII_RX_CTL,
                     
             output           [0:0] HPS_3V3_EMAC0_RGMII_MDC,
             inout            [0:0] HPS_3V3_EMAC0_RGMII_MDIO,				
                 
             //CAN
             output           [0:0] HPS_3V3_CAN0_TX,
             input            [0:0] HPS_3V3_CAN0_RX,
                                  
             output           [0:0] HPS_3V3_CAN1_TX,
             input            [0:0] HPS_3V3_CAN1_RX,
				
				 // USB
             // inout  HPS_3V3_USB1_D0  
             // inout  HPS_3V3_USB1_D1  
             // inout  HPS_3V3_USB1_D2  
             // inout  HPS_3V3_USB1_D3  
             // inout  HPS_3V3_USB1_D4  
             // inout  HPS_3V3_USB1_D5  
             // inout  HPS_3V3_USB1_D6  
             // inout  HPS_3V3_USB1_D7  
             // input  HPS_3V3_USB1_CLK 
             // output HPS_3V3_USB1_STP 
             // input  HPS_3V3_USB1_DIR 
             // input  HPS_3V3_USB1_NXT 
	
         	 // GPIO
				 inout            [0:0] HPS_3V3_GPIO14_via_NAND_ALE,
				 inout            [0:0] HPS_3V3_GPIO15_via_NAND_CE ,
				 inout            [0:0] HPS_3V3_GPIO16_via_NAND_CLE,
				 inout            [0:0] HPS_3V3_GPIO17_via_NAND_RE ,
				 inout            [0:0] HPS_3V3_GPIO18_via_NAND_RB ,
				 inout            [0:0] HPS_3V3_GPIO19_via_NAND_DQ0,
				
				 inout            [0:0] HPS_3V3_GPIO22_via_NAND_DQ3,
				 inout            [0:0] HPS_3V3_GPIO23_via_NAND_DQ4,
				 inout            [0:0] HPS_3V3_GPIO24_via_NAND_DQ5,
				 inout            [0:0] HPS_3V3_GPIO25_via_NAND_DQ6,
				 inout            [0:0] HPS_3V3_GPIO26_via_NAND_DQ7,
				 inout            [0:0] HPS_3V3_GPIO27_via_NAND_WP,
				 inout            [0:0] HPS_3V3_GPIO28_via_NAND_WE,
				 inout            [0:0] HPS_3V3_GPIO29_via_QSPI_IO0, 
				 inout            [0:0] HPS_3V3_GPIO30_via_QSPI_IO1, 
				 inout            [0:0] HPS_3V3_GPIO31_via_QSPI_IO2, 
				 inout            [0:0] HPS_3V3_GPIO32_via_QSPI_IO3, 
				 inout            [0:0] HPS_3V3_GPIO33_via_QSPI_SS0, 
				 inout            [0:0] HPS_3V3_GPIO34_via_QSPI_CLK, 
				 inout            [0:0] HPS_3V3_GPIO35_via_QSPI_SS1, 
				
				 inout            [0:0] HPS_3V3_GPIO37_via_SDMMC_PWREN,
				 
				 inout            [0:0] HPS_3V3_GPIO40_via_SDMMC_D4,
				 inout            [0:0] HPS_3V3_GPIO41_via_SDMMC_D5,
				 inout            [0:0] HPS_3V3_GPIO42_via_SDMMC_D6,
				 inout            [0:0] HPS_3V3_GPIO43_via_SDMMC_D7,
				 inout            [0:0] HPS_3V3_GPIO44_via_SDMMC_CLK_IN,	
				
				 inout            [0:0] HPS_3V3_GPIO48_via_TRACE_CLK,
				 inout            [0:0] HPS_3V3_GPIO49_via_TRACE_D0,	
				 inout            [0:0] HPS_3V3_GPIO49_via_TRACE_D1,
																																		
				 inout            [0:0] HPS_3V3_GPIO55_via_TRACE_D6,
				 inout            [0:0] HPS_3V3_GPIO56_via_TRACE_D7
);				

//Custom assignments
assign FPGA_3V3_ADC_nSTART = 0;

//IoT Octopus qsys module instantiation
IoTOctopus_QSYS u0 (
                .memory_mem_a                                 (HPS_DRAM_MA),                    
                .memory_mem_ba                                (HPS_DRAM_BA),                    
                .memory_mem_ck                                (HPS_DRAM_SDCLK_0_P),             
                .memory_mem_ck_n                              (HPS_DRAM_SDCLK_0_N),             
                .memory_mem_cke                               (HPS_DRAM_MCKE),                  
                .memory_mem_cs_n                              (HPS_DRAM_nMCS),                  
                .memory_mem_ras_n                             (HPS_DRAM_nRAS),                  
                .memory_mem_cas_n                             (HPS_DRAM_nCAS),                  
                .memory_mem_we_n                              (HPS_DRAM_nMWE),                  
                .memory_mem_reset_n                           (HPS_DRAm_nRESET),                
                .memory_mem_dq                                (HPS_DRAM_MDQ),                   
                .memory_mem_dqs                               (HPS_DRAM_DQS0_P),                
                .memory_mem_dqs_n                             (HPS_DRAM_DQS0_N),                
                .memory_mem_odt                               (HPS_DRAM_MODT),                  
                .memory_mem_dm                                (HPS_DRAM_MDM),                   
                .memory_oct_rzqin                             (HPS_DRAM_RZQ),                   
                
                //SDIO
                .hps_io_hps_io_sdio_inst_CMD                  (HPS_3V3_SDMMC_CMD),              
                .hps_io_hps_io_sdio_inst_D0                   (HPS_3V3_SDMMC_D0),               
                .hps_io_hps_io_sdio_inst_D1                   (HPS_3V3_SDMMC_D1),               
                .hps_io_hps_io_sdio_inst_CLK                  (HPS_3V3_SDMMC_CLK),              
                .hps_io_hps_io_sdio_inst_D2                   (HPS_3V3_SDMMC_D2),               
                .hps_io_hps_io_sdio_inst_D3                   (HPS_3V3_SDMMC_D3),               
                
                // UART
                .hps_io_hps_io_uart0_inst_RX                  (HPS_3V3_UART0_RX),               
                .hps_io_hps_io_uart0_inst_TX                  (HPS_3V3_UART0_TX),               
                
                //ETH 0
                .hps_io_hps_io_emac0_inst_TX_CLK              (HPS_3V3_EMAC0_RGMII_TX_CLK),     
                .hps_io_hps_io_emac0_inst_TX_CTL              (HPS_3V3_EMAC0_RGMII_TX_CTL),     
                .hps_io_hps_io_emac0_inst_TXD0                (HPS_3V3_EMAC0_RGMII_TXD0),       
                .hps_io_hps_io_emac0_inst_TXD1                (HPS_3V3_EMAC0_RGMII_TXD1),       
                .hps_io_hps_io_emac0_inst_TXD2                (HPS_3V3_EMAC0_RGMII_TXD2),       
                .hps_io_hps_io_emac0_inst_TXD3                (HPS_3V3_EMAC0_RGMII_TXD3),       
                
                .hps_io_hps_io_emac0_inst_RX_CLK              (HPS_3V3_EMAC0_RGMII_RX_CLK),   
                .hps_io_hps_io_emac0_inst_RX_CTL              (HPS_3V3_EMAC0_RGMII_RX_CTL),     
                .hps_io_hps_io_emac0_inst_RXD0                (HPS_3V3_EMAC0_RGMII_RXD0),     
                .hps_io_hps_io_emac0_inst_RXD1                (HPS_3V3_EMAC0_RGMII_RXD1),     
                .hps_io_hps_io_emac0_inst_RXD2                (HPS_3V3_EMAC0_RGMII_RXD2),     
                .hps_io_hps_io_emac0_inst_RXD3                (HPS_3V3_EMAC0_RGMII_RXD3),     
                
                .hps_io_hps_io_emac0_inst_MDIO                (HPS_3V3_EMAC0_RGMII_MDIO),       
                .hps_io_hps_io_emac0_inst_MDC                 (HPS_3V3_EMAC0_RGMII_MDC),        
        
                // I2Cs
                .hps_io_hps_io_i2c0_inst_SDA                  (HPS_3V3_I2C0_SDA),               
                .hps_io_hps_io_i2c0_inst_SCL                  (HPS_3V3_I2C0_SCL),               
                
                .hps_io_hps_io_i2c1_inst_SDA                  (HPS_3V3_I2C1_SDA),               
                .hps_io_hps_io_i2c1_inst_SCL                  (HPS_3V3_I2C1_SCL),               
                
                //CANs
                .hps_io_hps_io_can0_inst_RX                   (HPS_3V3_CAN0_RX),                
                .hps_io_hps_io_can0_inst_TX                   (HPS_3V3_CAN0_TX),                
                
                .hps_io_hps_io_can1_inst_RX                   (HPS_3V3_CAN1_RX),                
                .hps_io_hps_io_can1_inst_TX                   (HPS_3V3_CAN1_TX),                
                
                // SPI Master
                .hps_io_hps_io_spim0_inst_CLK                 (HPS_3V3_SPIM0_CLK),             
                .hps_io_hps_io_spim0_inst_MOSI                (HPS_3V3_SPIM0_MOSI),             
                .hps_io_hps_io_spim0_inst_MISO                (HPS_3V3_SPIM0_MISO),             
                .hps_io_hps_io_spim0_inst_SS0                 (HPS_3V3_SPIM0_SS0),             
                
                 //  GPIOs
                .hps_io_hps_io_gpio_inst_GPIO14               (HPS_3V3_GPIO14_via_NAND_ALE),    
                .hps_io_hps_io_gpio_inst_GPIO15               (HPS_3V3_GPIO15_via_NAND_CE),     
                .hps_io_hps_io_gpio_inst_GPIO16               (HPS_3V3_GPIO16_via_NAND_CLE),    
                .hps_io_hps_io_gpio_inst_GPIO17               (HPS_3V3_GPIO17_via_NAND_RE),     
                .hps_io_hps_io_gpio_inst_GPIO18               (HPS_3V3_GPIO18_via_NAND_RB),     
                .hps_io_hps_io_gpio_inst_GPIO19               (HPS_3V3_GPIO19_via_NAND_DQ0),    
                .hps_io_hps_io_gpio_inst_GPIO22               (HPS_3V3_GPIO22_via_NAND_DQ3),    
                .hps_io_hps_io_gpio_inst_GPIO23               (HPS_3V3_GPIO23_via_NAND_DQ4),    
                .hps_io_hps_io_gpio_inst_GPIO24               (HPS_3V3_GPIO24_via_NAND_DQ5),    
                .hps_io_hps_io_gpio_inst_GPIO25               (HPS_3V3_GPIO25_via_NAND_DQ6),    
                .hps_io_hps_io_gpio_inst_GPIO26               (HPS_3V3_GPIO26_via_NAND_DQ7),    
                .hps_io_hps_io_gpio_inst_GPIO27               (HPS_3V3_GPIO27_via_NAND_WP),     
                .hps_io_hps_io_gpio_inst_GPIO28               (HPS_3V3_GPIO28_via_NAND_WE),     
                .hps_io_hps_io_gpio_inst_GPIO29               (HPS_3V3_GPIO29_via_QSPI_IO0),    
                .hps_io_hps_io_gpio_inst_GPIO30               (HPS_3V3_GPIO30_via_QSPI_IO1),    
                .hps_io_hps_io_gpio_inst_GPIO31               (HPS_3V3_GPIO31_via_QSPI_IO2),    
                .hps_io_hps_io_gpio_inst_GPIO32               (HPS_3V3_GPIO32_via_QSPI_IO3),    
                .hps_io_hps_io_gpio_inst_GPIO33               (HPS_3V3_GPIO33_via_QSPI_SS0),    
                .hps_io_hps_io_gpio_inst_GPIO34               (HPS_3V3_GPIO34_via_QSPI_CLK),    
                .hps_io_hps_io_gpio_inst_GPIO35               (HPS_3V3_GPIO35_via_QSPI_SS1),    
                .hps_io_hps_io_gpio_inst_GPIO37               (HPS_3V3_GPIO37_via_SDMMC_PWREN), 
                .hps_io_hps_io_gpio_inst_GPIO40               (HPS_3V3_GPIO40_via_SDMMC_D4),    
                .hps_io_hps_io_gpio_inst_GPIO41               (HPS_3V3_GPIO41_via_SDMMC_D5),    
                .hps_io_hps_io_gpio_inst_GPIO42               (HPS_3V3_GPIO42_via_SDMMC_D6),    
                .hps_io_hps_io_gpio_inst_GPIO43               (HPS_3V3_GPIO43_via_SDMMC_D7),    
                .hps_io_hps_io_gpio_inst_GPIO44               (HPS_3V3_GPIO44_via_SDMMC_CLK_IN),
                .hps_io_hps_io_gpio_inst_GPIO48               (HPS_3V3_GPIO48_via_TRACE_CLK),   
                .hps_io_hps_io_gpio_inst_GPIO49               (HPS_3V3_GPIO49_via_TRACE_D0),    
                .hps_io_hps_io_gpio_inst_GPIO50               (HPS_3V3_GPIO49_via_TRACE_D1),    
                .hps_io_hps_io_gpio_inst_GPIO55               (HPS_3V3_GPIO55_via_TRACE_D6),    
                .hps_io_hps_io_gpio_inst_GPIO56               (HPS_3V3_GPIO56_via_TRACE_D7),
					 
					 .clk_32mhz_input_clk             				  (FPGA_FPGA_3V3_32_768MHz_CLK_IN),          //  clk_32mhz_input.clk
					 .clk_8mhz_clk                    				  (FPGA_3V3_IO_CLKOUT),                    	//  clk_8mhz.clk
					 .clk_8mhz_locked_export          				  (FPGA_3V3_ADC_nRESET),          				//  clk_8mhz_locked.export
					 .adc_spi_master_external_MISO    				  (FPGA_3V3_SPI_MISO),    							//  adc_spi_master_external.MISO
					 .adc_spi_master_external_MOSI    				  (FPGA_3V3_SPI_MOSI),    							// .MOSI
					 .adc_spi_master_external_SCLK    				  (FPGA_3V3_SPI_CLK),    							// .SCLK
					 .adc_spi_master_external_SS_n    				  (FPGA_3V3_SPI_SS0),    							// .SS_n
					 .gps_uart_external_rxd           				  (FPGA_3V3_UART_RX),           					//  gps_uart_external.rxd
					 .gps_uart_external_txd           				  (FPGA_3V3_UART_TX),            				// .txd
                .adc_control_pins_external_export             ({FPGA_3V3_ADC_FORMAT,FPGA_3V3_ADC_MODE,FPGA_3V3_ADC_nSYNC_IN})
                
);

endmodule
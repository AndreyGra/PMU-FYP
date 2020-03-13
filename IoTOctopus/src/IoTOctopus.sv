// Monash University 2019
// PMU Final Year Project
// Current Members: Rory Sutherland and Andrey Grant
// Previous work by: HongQiang Xu (2018-2019)
// =================================================


// Document Structure
// ==================
// Wire and Register declaration
// Module Declarations
// Any other needed code -> consider moving to a module

// Notes
// ==================
// To make the text line up go to Tools>Options>Text Editor and change tabs to 4 spaces.



// Wire and Register declaration
// ============================= 			
module IoTOctopus(
				// FPGA pin declaration
				// =====================
				// Clock
				input 						FPGA_FPGA_3V3_32_768MHz_CLK_IN,
				
				//==================ADC========================
				input							FPGA_3V3_ADC_DCLK,
				input 				[3:0]	FPGA_3V3_ADC_DOUT,
				output						FPGA_3V3_IO_CLKOUT,
				output						FPGA_3V3_ADC_nRESET,
				output						FPGA_3V3_ADC_nSYNC_IN,
				input							FPGA_3V3_ADC_nSYNC_OUT,
				output						FPGA_3V3_ADC_nSTART,
				input							FPGA_3V3_ADC_nDRDY,
				output				[1:0]	FPGA_3V3_ADC_FORMAT,
				output				[3:0]	FPGA_3V3_ADC_MODE,
				
				//ADC SPI Control
				output						FPGA_3V3_SPI_SS0,
				output						FPGA_3V3_SPI_CLK,
				output						FPGA_3V3_SPI_MOSI,
				input							FPGA_3V3_SPI_MISO,
				
				//=================GPS=========================
				input							FPGA_3V3_UART_RX,
				output						FPGA_3V3_UART_TX,
				input							FPGA_3V3_GPS_1PPS,
				input 						FPGA_3V3_EXTERNAL_1PPS,
				
				//================FPGA PHY1===================
				//TX
				output				[3:0] FPGA_3V3_1G_PHY1_TX_D,
				output 				[0:0]	FPGA_3V3_1G_PHY1_TX_CLK,
				output 				[0:0] FPGA_3V3_1G_PHY1_TX_CTL,
				
				//RX
				input					[3:0] FPGA_3V3_1G_PHY1_RX_D,
				input 				[0:0]	FPGA_3V3_1G_PHY1_RX_CLK,
				input 				[0:0] FPGA_3V3_1G_PHY1_RX_CTL,
				
				//Common Pins
				inout 				[0:0]	FPGA_3V3_1G_PHY1_MDIO,
	
				input 				[0:0] FPGA_3V3_1G_PHY1_IRQ,
				input					[0:0] FPGA_3V3_ETH_PHY1_CLK,
				input 				[0:0] FPGA_3V3_1G_PHY1_M125_CLK,
				
				output				[0:0] FPGA_3V3_1G_PHY1_MDC,
				output 				[0:0] FPGA_3V3_1G_PHY1_nRST
);

				
				
				
				// Other Wires or Connections
				// ==========================
				wire				onePPS_clk;
				assign FPGA_3V3_ADC_FORMAT[1:0] = 1; // This selects SPI control mode. See table 13 of datasheet.
				assign FPGA_3V3_ADC_MODE[3:0] = 0; // In SPI Modes, these act as GPIOs. See table 14 of datasheet and Figure 100.
				 

// Module Declarations
// ==================

IoTOctopus_QSYS u0 (
			.adc_clk_out_output 						(FPGA_3V3_IO_CLKOUT),
			.trgr_n_output								(FPGA_3V3_ADC_nSTART),
			.clk_32_clk          					(FPGA_FPGA_3V3_32_768MHz_CLK_IN),
			.reset_reset_n       					(FPGA_3V3_ADC_nRESET), //This is the reset for the whole FPGA. It is connected like this because we don't want to reset.
			.dclk_input    							(FPGA_3V3_ADC_DCLK),
			.dout_input 								(FPGA_3V3_ADC_DOUT),
			.drdy_n_input								(FPGA_3V3_ADC_nDRDY),
			.gps_1pps_input							(FPGA_3V3_GPS_1PPS),
			
			//ETHERNET
			.mac_rgmii_connection_rgmii_in		(FPGA_3V3_1G_PHY1_RX_D), 
			.mac_rgmii_connection_rgmii_out		(FPGA_3V3_1G_PHY1_TX_D),
			.mac_rgmii_connection_rx_control		(FPGA_3V3_1G_PHY1_RX_CTL),
			.mac_rgmii_connection_tx_control		(FPGA_3V3_1G_PHY1_TX_CTL),
			
			.mac_tx_clock_connection_clk			(FPGA_3V3_1G_PHY1_TX_CLK),
			.mac_rx_clock_connection_clk			(FPGA_3V3_1G_PHY1_RX_CLK),
			
			.mac_mdio_connection_mdc				(FPGA_3V3_1G_PHY1_MDC),     
			.mac_mdio_connection_mdio_in			(FPGA_3V3_1G_PHY1_MDIO), 
			.mac_mdio_connection_mdio_out			(FPGA_3V3_1G_PHY1_MDIO),
); 
	 
ADC_SPI adc0 (
			.FPGA_CLK1_32							(FPGA_FPGA_3V3_32_768MHz_CLK_IN),
			.ss										(FPGA_3V3_SPI_SS0),
			.sck									   (FPGA_3V3_SPI_CLK),
			.sdo									   (FPGA_3V3_SPI_MOSI)
);

assign FPGA_3V3_ADC_nRESET = 1;

endmodule 
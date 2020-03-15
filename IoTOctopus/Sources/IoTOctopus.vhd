 ----------------------------------------------------------------------------------
-- Company:      
-- Engineer: 
-- 
-- Create Date:         
-- Design Name: 
-- Module Name:         
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision             0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IoTOctopus is
    Port (
	 	      -- HPS pin declarastion
			   -- =====================
			   --
			   -- DDR3
			   HPS_DRAM_MA                            : out   STD_LOGIC_VECTOR(14 downto 0);
			   HPS_DRAM_BA                            : out   STD_LOGIC_VECTOR(2 downto 0);
				HPS_DRAM_nMCS                          : out   STD_LOGIC;
			   HPS_DRAM_nCAS                          : out   STD_LOGIC;
			   HPS_DRAM_nRAS                          : out   STD_LOGIC;
			   HPS_DRAM_nMWE                          : out   STD_LOGIC;
				HPS_DRAM_MCKE                          : out   STD_LOGIC;
			   HPS_DRAm_nRESET                        : out   STD_LOGIC;
			   HPS_DRAM_SDCLK_0_P                     : out   STD_LOGIC;
			   HPS_DRAM_SDCLK_0_N                     : out   STD_LOGIC; 
				HPS_DRAM_MODT                          : out   STD_LOGIC;  
			   HPS_DRAM_RZQ                           : in    STD_LOGIC;
			   --
			   HPS_DRAM_MDQ                           : inout STD_LOGIC_VECTOR(31 downto 0);
			   HPS_DRAM_MDM                           : out   STD_LOGIC_VECTOR(3 downto 0);
			   HPS_DRAM_DQS0_P                        : inout STD_LOGIC_VECTOR(3 downto 0);
			   HPS_DRAM_DQS0_N                        : inout STD_LOGIC_VECTOR(3 downto 0);
				
			   -- UART0
			   HPS_3V3_UART0_TX                       : out   STD_LOGIC;
			   HPS_3V3_UART0_RX                       : in    STD_LOGIC;				
			
			   -- SD
			   HPS_3V3_SDMMC_CLK                      : out   STD_LOGIC;
			   HPS_3V3_SDMMC_CMD                      : inout STD_LOGIC;
			   HPS_3V3_SDMMC_D0                       : inout STD_LOGIC;
			   HPS_3V3_SDMMC_D1                       : inout STD_LOGIC;
			   HPS_3V3_SDMMC_D2                       : inout STD_LOGIC;
			   HPS_3V3_SDMMC_D3                       : inout STD_LOGIC;
				
				-- I2C
			   HPS_3V3_I2C0_SCL                       : inout STD_LOGIC;
			   HPS_3V3_I2C0_SDA                       : inout STD_LOGIC;
		
				HPS_3V3_I2C1_SCL                       : inout STD_LOGIC;
    		   HPS_3V3_I2C1_SDA                       : inout STD_LOGIC;
				
				-- SPI
				HPS_3V3_SPIM0_CLK                      : out   STD_LOGIC;
				HPS_3V3_SPIM0_MOSI                     : out   STD_LOGIC;
				HPS_3V3_SPIM0_MISO                     : in    STD_LOGIC;
				HPS_3V3_SPIM0_SS0                      : out   STD_LOGIC;
				
				-- QSPI  
				--HPS_3V3_QSPI_SS0                       : out   STD_LOGIC;
				--HPS_3V3_QSPI_CLK                       : out   STD_LOGIC;
				--HPS_3V3_QSPI_IO0                       : inout STD_LOGIC;
				--HPS_3V3_QSPI_IO1                       : inout STD_LOGIC;
				--HPS_3V3_QSPI_IO2                       : inout STD_LOGIC;
				--HPS_3V3_QSPI_IO3                       : inout STD_LOGIC;
				
				-- EMAC0
			   HPS_3V3_EMAC0_RGMII_TXD0               : out   STD_LOGIC;
			   HPS_3V3_EMAC0_RGMII_TXD1               : out   STD_LOGIC;
			   HPS_3V3_EMAC0_RGMII_TXD2               : out   STD_LOGIC;
			   HPS_3V3_EMAC0_RGMII_TXD3               : out   STD_LOGIC;
			  
			   HPS_3V3_EMAC0_RGMII_TX_CLK             : out   STD_LOGIC;
			   HPS_3V3_EMAC0_RGMII_TX_CTL             : out   STD_LOGIC;
			  
			   HPS_3V3_EMAC0_RGMII_RXD0               : in    STD_LOGIC;
			   HPS_3V3_EMAC0_RGMII_RXD1               : in    STD_LOGIC;
			   HPS_3V3_EMAC0_RGMII_RXD2               : in    STD_LOGIC;
			   HPS_3V3_EMAC0_RGMII_RXD3               : in    STD_LOGIC;
			  
			   HPS_3V3_EMAC0_RGMII_RX_CLK             : in    STD_LOGIC;
			   HPS_3V3_EMAC0_RGMII_RX_CTL             : in    STD_LOGIC;
			  
			   HPS_3V3_EMAC0_RGMII_MDC                : out   STD_LOGIC;
			   HPS_3V3_EMAC0_RGMII_MDIO               : inout STD_LOGIC;				
				
				-- CAN
				HPS_3V3_CAN0_TX                        : out   STD_LOGIC;
				HPS_3V3_CAN0_RX                        : in    STD_LOGIC;
				
				HPS_3V3_CAN1_TX                        : out   STD_LOGIC;
				HPS_3V3_CAN1_RX                        : in    STD_LOGIC;
				
				-- USB
			   --HPS_3V3_USB1_D0                        : inout STD_LOGIC;
    			--HPS_3V3_USB1_D1                        : inout STD_LOGIC;
		      --HPS_3V3_USB1_D2                        : inout STD_LOGIC;
	         --HPS_3V3_USB1_D3                        : inout STD_LOGIC;
            --HPS_3V3_USB1_D4                        : inout STD_LOGIC;
            --HPS_3V3_USB1_D5                        : inout STD_LOGIC;
			   --HPS_3V3_USB1_D6                        : inout STD_LOGIC;
			   --HPS_3V3_USB1_D7                        : inout STD_LOGIC;
			   --HPS_3V3_USB1_CLK                       : in    STD_LOGIC;
			   --HPS_3V3_USB1_STP                       : out   STD_LOGIC;
				--HPS_3V3_USB1_DIR                       : in    STD_LOGIC;
				--HPS_3V3_USB1_NXT                       : in    STD_LOGIC;
	
         	-- GPIO
				HPS_3V3_GPIO14_via_NAND_ALE            : inout STD_LOGIC;
				HPS_3V3_GPIO15_via_NAND_CE             : inout STD_LOGIC;
				HPS_3V3_GPIO16_via_NAND_CLE            : inout STD_LOGIC;
				HPS_3V3_GPIO17_via_NAND_RE             : inout STD_LOGIC;
				HPS_3V3_GPIO18_via_NAND_RB             : inout STD_LOGIC;
				HPS_3V3_GPIO19_via_NAND_DQ0            : inout STD_LOGIC;
				
				HPS_3V3_GPIO22_via_NAND_DQ3            : inout STD_LOGIC;
				HPS_3V3_GPIO23_via_NAND_DQ4            : inout STD_LOGIC;
				HPS_3V3_GPIO24_via_NAND_DQ5            : inout STD_LOGIC;
				HPS_3V3_GPIO25_via_NAND_DQ6            : inout STD_LOGIC;
				HPS_3V3_GPIO26_via_NAND_DQ7            : inout STD_LOGIC;
				HPS_3V3_GPIO27_via_NAND_WP             : inout STD_LOGIC;
				HPS_3V3_GPIO28_via_NAND_WE             : inout STD_LOGIC;
				HPS_3V3_GPIO29_via_QSPI_IO0            : inout STD_LOGIC;
				HPS_3V3_GPIO30_via_QSPI_IO1            : inout STD_LOGIC;
				HPS_3V3_GPIO31_via_QSPI_IO2            : inout STD_LOGIC;
				HPS_3V3_GPIO32_via_QSPI_IO3            : inout STD_LOGIC;
				HPS_3V3_GPIO33_via_QSPI_SS0            : inout STD_LOGIC;
				HPS_3V3_GPIO34_via_QSPI_CLK            : inout STD_LOGIC;
				HPS_3V3_GPIO35_via_QSPI_SS1            : inout STD_LOGIC;
					
				HPS_3V3_GPIO37_via_SDMMC_PWREN         : inout STD_LOGIC;
				
				HPS_3V3_GPIO40_via_SDMMC_D4            : inout STD_LOGIC;
				HPS_3V3_GPIO41_via_SDMMC_D5            : inout STD_LOGIC;
				HPS_3V3_GPIO42_via_SDMMC_D6            : inout STD_LOGIC;
				HPS_3V3_GPIO43_via_SDMMC_D7            : inout STD_LOGIC;
				HPS_3V3_GPIO44_via_SDMMC_CLK_IN        : inout STD_LOGIC;	
	
            HPS_3V3_GPIO48_via_TRACE_CLK           : inout STD_LOGIC;
			   HPS_3V3_GPIO49_via_TRACE_D0            : inout STD_LOGIC;	
				HPS_3V3_GPIO49_via_TRACE_D1            : inout STD_LOGIC;
				
				HPS_3V3_GPIO55_via_TRACE_D6            : inout STD_LOGIC;
				HPS_3V3_GPIO56_via_TRACE_D7            : inout STD_LOGIC
				
				
		      -- FPGA pin declarastion
			   -- =====================
			   --

      );				
end entity IoTOctopus;

architecture rtl of IoTOctopus is

	component IoTOctopus_QSYS is
	   port (
		   memory_mem_a                                 : out   std_logic_vector(14 downto 0);                    -- mem_a
			memory_mem_ba                                : out   std_logic_vector(2 downto 0);                     -- mem_ba
			memory_mem_ck                                : out   std_logic;                                        -- mem_ck
			memory_mem_ck_n                              : out   std_logic;                                        -- mem_ck_n
			memory_mem_cke                               : out   std_logic;                                        -- mem_cke
			memory_mem_cs_n                              : out   std_logic;                                        -- mem_cs_n
			memory_mem_ras_n                             : out   std_logic;                                        -- mem_ras_n
			memory_mem_cas_n                             : out   std_logic;                                        -- mem_cas_n
			memory_mem_we_n                              : out   std_logic;                                        -- mem_we_n
			memory_mem_reset_n                           : out   std_logic;                                        -- mem_reset_n
			memory_mem_dq                                : inout std_logic_vector(31 downto 0) := (others => 'X'); -- mem_dq
			memory_mem_dqs                               : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs
			memory_mem_dqs_n                             : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs_n
			memory_mem_odt                               : out   std_logic                   ;                     -- mem_odt
			memory_mem_dm                                : out   std_logic_vector(3 downto 0);                     -- mem_dm
			memory_oct_rzqin                             : in    std_logic                     := 'X';             -- oct_rzqin
			
			hps_io_hps_io_emac0_inst_TX_CLK              : out   std_logic;                                        -- hps_io_emac0_inst_TX_CLK
			hps_io_hps_io_emac0_inst_TXD0                : out   std_logic;                                        -- hps_io_emac0_inst_TXD0
			hps_io_hps_io_emac0_inst_TXD1                : out   std_logic;                                        -- hps_io_emac0_inst_TXD1
			hps_io_hps_io_emac0_inst_TXD2                : out   std_logic;                                        -- hps_io_emac0_inst_TXD2
			hps_io_hps_io_emac0_inst_TXD3                : out   std_logic;                                        -- hps_io_emac0_inst_TXD3
			hps_io_hps_io_emac0_inst_RXD0                : in    std_logic                     := 'X';             -- hps_io_emac0_inst_RXD0
			hps_io_hps_io_emac0_inst_MDIO                : inout std_logic                     := 'X';             -- hps_io_emac0_inst_MDIO
			hps_io_hps_io_emac0_inst_MDC                 : out   std_logic;                                        -- hps_io_emac0_inst_MDC
			hps_io_hps_io_emac0_inst_RX_CTL              : in    std_logic                     := 'X';             -- hps_io_emac0_inst_RX_CTL
			hps_io_hps_io_emac0_inst_TX_CTL              : out   std_logic;                                        -- hps_io_emac0_inst_TX_CTL
			hps_io_hps_io_emac0_inst_RX_CLK              : in    std_logic                     := 'X';             -- hps_io_emac0_inst_RX_CLK
			hps_io_hps_io_emac0_inst_RXD1                : in    std_logic                     := 'X';             -- hps_io_emac0_inst_RXD1
			hps_io_hps_io_emac0_inst_RXD2                : in    std_logic                     := 'X';             -- hps_io_emac0_inst_RXD2
			hps_io_hps_io_emac0_inst_RXD3                : in    std_logic                     := 'X';             -- hps_io_emac0_inst_RXD3
			
			hps_io_hps_io_sdio_inst_CMD                  : inout std_logic                     := 'X';             -- hps_io_sdio_inst_CMD
			hps_io_hps_io_sdio_inst_D0                   : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D0
			hps_io_hps_io_sdio_inst_D1                   : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D1
			hps_io_hps_io_sdio_inst_CLK                  : out   std_logic;                                        -- hps_io_sdio_inst_CLK
			hps_io_hps_io_sdio_inst_D2                   : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D2
			hps_io_hps_io_sdio_inst_D3                   : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D3
			
			hps_io_hps_io_uart0_inst_RX                  : in    std_logic                     := 'X';             -- hps_io_uart0_inst_RX
			hps_io_hps_io_uart0_inst_TX                  : out   std_logic;                                        -- hps_io_uart0_inst_TX
			
			hps_io_hps_io_i2c0_inst_SDA                  : inout std_logic                     := 'X';             -- hps_io_i2c0_inst_SDA
			hps_io_hps_io_i2c0_inst_SCL                  : inout std_logic                     := 'X';             -- hps_io_i2c0_inst_SCL
			
			hps_io_hps_io_i2c1_inst_SDA                  : inout std_logic                     := 'X';             -- hps_io_i2c1_inst_SDA
			hps_io_hps_io_i2c1_inst_SCL                  : inout std_logic                     := 'X';             -- hps_io_i2c1_inst_SCL
			
		   hps_io_hps_io_can0_inst_RX                   : in    std_logic                     := 'X';             -- hps_io_can0_inst_RX
			hps_io_hps_io_can0_inst_TX                   : out   std_logic;                                        -- hps_io_can0_inst_TX
			
			hps_io_hps_io_can1_inst_RX                   : in    std_logic                     := 'X';             -- hps_io_can1_inst_RX
			hps_io_hps_io_can1_inst_TX                   : out   std_logic;                                        -- hps_io_can1_inst_TX
			
			hps_io_hps_io_spim0_inst_CLK                 : out   std_logic;                                        -- hps_io_spim0_inst_CLK
			hps_io_hps_io_spim0_inst_MOSI                : out   std_logic;                                        -- hps_io_spim0_inst_MOSI
			hps_io_hps_io_spim0_inst_MISO                : in    std_logic                     := 'X';             -- hps_io_spim0_inst_MISO
			hps_io_hps_io_spim0_inst_SS0                 : out   std_logic;                                        -- hps_io_spim0_inst_SS0
			
			hps_io_hps_io_gpio_inst_GPIO14               : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO14
			hps_io_hps_io_gpio_inst_GPIO15               : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO15
			hps_io_hps_io_gpio_inst_GPIO16               : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO16
			hps_io_hps_io_gpio_inst_GPIO17               : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO17
			hps_io_hps_io_gpio_inst_GPIO18               : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO18
			hps_io_hps_io_gpio_inst_GPIO19               : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO19
			hps_io_hps_io_gpio_inst_GPIO22               : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO22
			hps_io_hps_io_gpio_inst_GPIO23               : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO23
			hps_io_hps_io_gpio_inst_GPIO24               : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO24
			hps_io_hps_io_gpio_inst_GPIO25               : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO25
			hps_io_hps_io_gpio_inst_GPIO26               : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO26
			hps_io_hps_io_gpio_inst_GPIO27               : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO27
			hps_io_hps_io_gpio_inst_GPIO28               : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO28
			hps_io_hps_io_gpio_inst_GPIO29               : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO29
			hps_io_hps_io_gpio_inst_GPIO30               : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO30
			hps_io_hps_io_gpio_inst_GPIO31               : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO31
			hps_io_hps_io_gpio_inst_GPIO32               : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO32
			hps_io_hps_io_gpio_inst_GPIO33               : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO33
			hps_io_hps_io_gpio_inst_GPIO34               : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO34
			hps_io_hps_io_gpio_inst_GPIO35               : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO35
			hps_io_hps_io_gpio_inst_GPIO37               : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO37
			hps_io_hps_io_gpio_inst_GPIO40               : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO40
			hps_io_hps_io_gpio_inst_GPIO41               : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO41
			hps_io_hps_io_gpio_inst_GPIO42               : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO42
			hps_io_hps_io_gpio_inst_GPIO43               : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO43
			hps_io_hps_io_gpio_inst_GPIO44               : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO44
			hps_io_hps_io_gpio_inst_GPIO48               : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO48
			hps_io_hps_io_gpio_inst_GPIO49               : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO49
			hps_io_hps_io_gpio_inst_GPIO50               : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO50
			hps_io_hps_io_gpio_inst_GPIO55               : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO55
			hps_io_hps_io_gpio_inst_GPIO56               : inout std_logic                     := 'X'              -- hps_io_gpio_inst_GPIO56
		
			

		);
	end component IoTOctopus_QSYS;
			
			
begin			
			
	--HPS_I1: component NON_EC_ISSI_QSYS
	HPS_I1: component IoTOctopus_QSYS
		port map 
		   (
			   -- DDR
				memory_mem_a                                 => HPS_DRAM_MA,                       -- memory.mem_a
			   memory_mem_ba                                => HPS_DRAM_BA,                       --       .mem_ba
			   memory_mem_ck                                => HPS_DRAM_SDCLK_0_P,                --       .mem_ck
			   memory_mem_ck_n                              => HPS_DRAM_SDCLK_0_N,                --       .mem_ck_n
			   memory_mem_cke                               => HPS_DRAM_MCKE,                     --       .mem_cke
			   memory_mem_cs_n                              => HPS_DRAM_nMCS,                     --       .mem_cs_n
			   memory_mem_ras_n                             => HPS_DRAM_nRAS,                     --       .mem_ras_n
			   memory_mem_cas_n                             => HPS_DRAM_nCAS,                     --       .mem_cas_n
			   memory_mem_we_n                              => HPS_DRAM_nMWE,                     --       .mem_we_n
			   memory_mem_reset_n                           => HPS_DRAm_nRESET,                   --       .mem_reset_n
			   memory_mem_dq                                => HPS_DRAM_MDQ,                      --       .mem_dq
			   memory_mem_dqs                               => HPS_DRAM_DQS0_P,                   --       .mem_dqs
			   memory_mem_dqs_n                             => HPS_DRAM_DQS0_N,                   --       .mem_dqs_n
			   memory_mem_odt                               => HPS_DRAM_MODT,                     --       .mem_odt
			   memory_mem_dm                                => HPS_DRAM_MDM,                      --       .mem_dm
			   memory_oct_rzqin                             => HPS_DRAM_RZQ,                      --       .oct_rzqin
			   
				-- SDIO
			   hps_io_hps_io_sdio_inst_CMD                  => HPS_3V3_SDMMC_CMD,                 -- hps_io.hps_io_sdio_inst_CMD
			   hps_io_hps_io_sdio_inst_D0                   => HPS_3V3_SDMMC_D0,                  --       .hps_io_sdio_inst_D0
			   hps_io_hps_io_sdio_inst_D1                   => HPS_3V3_SDMMC_D1,                  --       .hps_io_sdio_inst_D1
			   hps_io_hps_io_sdio_inst_CLK                  => HPS_3V3_SDMMC_CLK,                 --       .hps_io_sdio_inst_CLK
			   hps_io_hps_io_sdio_inst_D2                   => HPS_3V3_SDMMC_D2,                  --       .hps_io_sdio_inst_D2
			   hps_io_hps_io_sdio_inst_D3                   => HPS_3V3_SDMMC_D3,                  --       .hps_io_sdio_inst_D3
			   
				-- UART
				hps_io_hps_io_uart0_inst_RX                  => HPS_3V3_UART0_RX,                  --       .hps_io_uart0_inst_RX
			   hps_io_hps_io_uart0_inst_TX                  => HPS_3V3_UART0_TX,                  --       .hps_io_uart0_inst_TX
				
				-- ETH 0
			   hps_io_hps_io_emac0_inst_TX_CLK              => HPS_3V3_EMAC0_RGMII_TX_CLK,        -- hps_io.hps_io_emac0_inst_TX_CLK
			   hps_io_hps_io_emac0_inst_TX_CTL              => HPS_3V3_EMAC0_RGMII_TX_CTL,        --       .hps_io_emac0_inst_TX_CTL
		   	hps_io_hps_io_emac0_inst_TXD0                => HPS_3V3_EMAC0_RGMII_TXD0,          --       .hps_io_emac0_inst_TXD0
			   hps_io_hps_io_emac0_inst_TXD1                => HPS_3V3_EMAC0_RGMII_TXD1,          --       .hps_io_emac0_inst_TXD1
			   hps_io_hps_io_emac0_inst_TXD2                => HPS_3V3_EMAC0_RGMII_TXD2,          --       .hps_io_emac0_inst_TXD2
			   hps_io_hps_io_emac0_inst_TXD3                => HPS_3V3_EMAC0_RGMII_TXD3,          --       .hps_io_emac0_inst_TXD3

				hps_io_hps_io_emac0_inst_RX_CLK              => HPS_3V3_EMAC0_RGMII_RX_CLK,        --       .hps_io_emac0_inst_RX_CLK
			   hps_io_hps_io_emac0_inst_RX_CTL              => HPS_3V3_EMAC0_RGMII_RX_CTL,        --       .hps_io_emac0_inst_RX_CTL
				hps_io_hps_io_emac0_inst_RXD0                => HPS_3V3_EMAC0_RGMII_RXD0,          --       .hps_io_emac0_inst_RXD0
			   hps_io_hps_io_emac0_inst_RXD1                => HPS_3V3_EMAC0_RGMII_RXD1,          --       .hps_io_emac0_inst_RXD1
			   hps_io_hps_io_emac0_inst_RXD2                => HPS_3V3_EMAC0_RGMII_RXD2,          --       .hps_io_emac0_inst_RXD2
			   hps_io_hps_io_emac0_inst_RXD3                => HPS_3V3_EMAC0_RGMII_RXD3,          --       .hps_io_emac0_inst_RXD3
				
			   hps_io_hps_io_emac0_inst_MDIO                => HPS_3V3_EMAC0_RGMII_MDIO,          --       .hps_io_emac0_inst_MDIO
			   hps_io_hps_io_emac0_inst_MDC                 => HPS_3V3_EMAC0_RGMII_MDC,           --       .hps_io_emac0_inst_MDC				
				
				-- I2Cs
				hps_io_hps_io_i2c0_inst_SDA                  => HPS_3V3_I2C0_SDA,                  --       .hps_io_i2c0_inst_SDA
			   hps_io_hps_io_i2c0_inst_SCL                  => HPS_3V3_I2C0_SCL,                  --       .hps_io_i2c0_inst_SCL
			
			   hps_io_hps_io_i2c1_inst_SDA                  => HPS_3V3_I2C1_SDA,                  --       .hps_io_i2c1_inst_SDA
			   hps_io_hps_io_i2c1_inst_SCL                  => HPS_3V3_I2C1_SCL,                  --       .hps_io_i2c1_inst_SCL
				
				-- CANs
			   hps_io_hps_io_can0_inst_RX                   => HPS_3V3_CAN0_RX,                   --       .hps_io_can1_inst_RX
			   hps_io_hps_io_can0_inst_TX                   => HPS_3V3_CAN0_TX,                   --       .hps_io_can1_inst_TX
			
			   hps_io_hps_io_can1_inst_RX                   => HPS_3V3_CAN1_RX,                   --       .hps_io_can1_inst_RX
			   hps_io_hps_io_can1_inst_TX                   => HPS_3V3_CAN1_TX,                   --       .hps_io_can1_inst_TX
				
				-- SPI Master
			   hps_io_hps_io_spim0_inst_CLK                 => HPS_3V3_SPIM0_CLK,                 --       .hps_io_spim0_inst_CLK
			   hps_io_hps_io_spim0_inst_MOSI                => HPS_3V3_SPIM0_MOSI,                --       .hps_io_spim0_inst_MOSI
			   hps_io_hps_io_spim0_inst_MISO                => HPS_3V3_SPIM0_MISO,                --       .hps_io_spim0_inst_MISO
			   hps_io_hps_io_spim0_inst_SS0                 => HPS_3V3_SPIM0_SS0,                 --       .hps_io_spim0_inst_SS0
			
			   -- GPIOs
			   hps_io_hps_io_gpio_inst_GPIO14               => HPS_3V3_GPIO14_via_NAND_ALE,       --       .hps_io_gpio_inst_GPIO14
			   hps_io_hps_io_gpio_inst_GPIO15               => HPS_3V3_GPIO15_via_NAND_CE,        --       .hps_io_gpio_inst_GPIO15
			   hps_io_hps_io_gpio_inst_GPIO16               => HPS_3V3_GPIO16_via_NAND_CLE,       --       .hps_io_gpio_inst_GPIO16
			   hps_io_hps_io_gpio_inst_GPIO17               => HPS_3V3_GPIO17_via_NAND_RE,        --       .hps_io_gpio_inst_GPIO17
			   hps_io_hps_io_gpio_inst_GPIO18               => HPS_3V3_GPIO18_via_NAND_RB,        --       .hps_io_gpio_inst_GPIO18
			   hps_io_hps_io_gpio_inst_GPIO19               => HPS_3V3_GPIO19_via_NAND_DQ0,       --       .hps_io_gpio_inst_GPIO19
			   hps_io_hps_io_gpio_inst_GPIO22               => HPS_3V3_GPIO22_via_NAND_DQ3,       --       .hps_io_gpio_inst_GPIO22
			   hps_io_hps_io_gpio_inst_GPIO23               => HPS_3V3_GPIO23_via_NAND_DQ4,       --       .hps_io_gpio_inst_GPIO23
			   hps_io_hps_io_gpio_inst_GPIO24               => HPS_3V3_GPIO24_via_NAND_DQ5,       --       .hps_io_gpio_inst_GPIO24
			   hps_io_hps_io_gpio_inst_GPIO25               => HPS_3V3_GPIO25_via_NAND_DQ6,       --       .hps_io_gpio_inst_GPIO25
			   hps_io_hps_io_gpio_inst_GPIO26               => HPS_3V3_GPIO26_via_NAND_DQ7,       --       .hps_io_gpio_inst_GPIO26
			   hps_io_hps_io_gpio_inst_GPIO27               => HPS_3V3_GPIO27_via_NAND_WP,        --       .hps_io_gpio_inst_GPIO27
			   hps_io_hps_io_gpio_inst_GPIO28               => HPS_3V3_GPIO28_via_NAND_WE,        --       .hps_io_gpio_inst_GPIO28
			   hps_io_hps_io_gpio_inst_GPIO29               => HPS_3V3_GPIO29_via_QSPI_IO0,       --       .hps_io_gpio_inst_GPIO29
			   hps_io_hps_io_gpio_inst_GPIO30               => HPS_3V3_GPIO30_via_QSPI_IO1,       --       .hps_io_gpio_inst_GPIO30
			   hps_io_hps_io_gpio_inst_GPIO31               => HPS_3V3_GPIO31_via_QSPI_IO2,       --       .hps_io_gpio_inst_GPIO31
			   hps_io_hps_io_gpio_inst_GPIO32               => HPS_3V3_GPIO32_via_QSPI_IO3,       --       .hps_io_gpio_inst_GPIO32
			   hps_io_hps_io_gpio_inst_GPIO33               => HPS_3V3_GPIO33_via_QSPI_SS0,       --       .hps_io_gpio_inst_GPIO33
			   hps_io_hps_io_gpio_inst_GPIO34               => HPS_3V3_GPIO34_via_QSPI_CLK,       --       .hps_io_gpio_inst_GPIO34
			   hps_io_hps_io_gpio_inst_GPIO35               => HPS_3V3_GPIO35_via_QSPI_SS1,       --       .hps_io_gpio_inst_GPIO35
		 	   hps_io_hps_io_gpio_inst_GPIO37               => HPS_3V3_GPIO37_via_SDMMC_PWREN,    --       .hps_io_gpio_inst_GPIO37
			   hps_io_hps_io_gpio_inst_GPIO40               => HPS_3V3_GPIO40_via_SDMMC_D4,       --       .hps_io_gpio_inst_GPIO40
			   hps_io_hps_io_gpio_inst_GPIO41               => HPS_3V3_GPIO41_via_SDMMC_D5,       --       .hps_io_gpio_inst_GPIO41
		   	hps_io_hps_io_gpio_inst_GPIO42               => HPS_3V3_GPIO42_via_SDMMC_D6,       --       .hps_io_gpio_inst_GPIO42
			   hps_io_hps_io_gpio_inst_GPIO43               => HPS_3V3_GPIO43_via_SDMMC_D7,       --       .hps_io_gpio_inst_GPIO43
			   hps_io_hps_io_gpio_inst_GPIO44               => HPS_3V3_GPIO44_via_SDMMC_CLK_IN,   --       .hps_io_gpio_inst_GPIO44
			   hps_io_hps_io_gpio_inst_GPIO48               => HPS_3V3_GPIO48_via_TRACE_CLK,      --       .hps_io_gpio_inst_GPIO48
			   hps_io_hps_io_gpio_inst_GPIO49               => HPS_3V3_GPIO49_via_TRACE_D0,       --       .hps_io_gpio_inst_GPIO49
			   hps_io_hps_io_gpio_inst_GPIO50               => HPS_3V3_GPIO49_via_TRACE_D1,       --       .hps_io_gpio_inst_GPIO50
		   	hps_io_hps_io_gpio_inst_GPIO55               => HPS_3V3_GPIO55_via_TRACE_D6,       --       .hps_io_gpio_inst_GPIO55
			   hps_io_hps_io_gpio_inst_GPIO56               => HPS_3V3_GPIO56_via_TRACE_D7        --       .hps_io_gpio_inst_GPIO56

		);	
		
		
end;	
		
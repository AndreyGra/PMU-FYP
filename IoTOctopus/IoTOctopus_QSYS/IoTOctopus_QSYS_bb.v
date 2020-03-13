
module IoTOctopus_QSYS (
	clk_32_clk,
	mac_mdio_connection_mdc,
	mac_mdio_connection_mdio_in,
	mac_mdio_connection_mdio_out,
	mac_mdio_connection_mdio_oen,
	mac_misc_connection_magic_wakeup,
	mac_misc_connection_magic_sleep_n,
	mac_misc_connection_ff_tx_crc_fwd,
	mac_misc_connection_ff_tx_septy,
	mac_misc_connection_tx_ff_uflow,
	mac_misc_connection_ff_tx_a_full,
	mac_misc_connection_ff_tx_a_empty,
	mac_misc_connection_rx_err_stat,
	mac_misc_connection_rx_frm_type,
	mac_misc_connection_ff_rx_dsav,
	mac_misc_connection_ff_rx_a_full,
	mac_misc_connection_ff_rx_a_empty,
	mac_rgmii_connection_rgmii_in,
	mac_rgmii_connection_rgmii_out,
	mac_rgmii_connection_rx_control,
	mac_rgmii_connection_tx_control,
	mac_rx_clock_connection_clk,
	mac_status_connection_set_10,
	mac_status_connection_set_1000,
	mac_status_connection_eth_mode,
	mac_status_connection_ena_10,
	mac_tx_clock_connection_clk,
	reset_reset_n);	

	input		clk_32_clk;
	output		mac_mdio_connection_mdc;
	input		mac_mdio_connection_mdio_in;
	output		mac_mdio_connection_mdio_out;
	output		mac_mdio_connection_mdio_oen;
	output		mac_misc_connection_magic_wakeup;
	input		mac_misc_connection_magic_sleep_n;
	input		mac_misc_connection_ff_tx_crc_fwd;
	output		mac_misc_connection_ff_tx_septy;
	output		mac_misc_connection_tx_ff_uflow;
	output		mac_misc_connection_ff_tx_a_full;
	output		mac_misc_connection_ff_tx_a_empty;
	output	[17:0]	mac_misc_connection_rx_err_stat;
	output	[3:0]	mac_misc_connection_rx_frm_type;
	output		mac_misc_connection_ff_rx_dsav;
	output		mac_misc_connection_ff_rx_a_full;
	output		mac_misc_connection_ff_rx_a_empty;
	input	[3:0]	mac_rgmii_connection_rgmii_in;
	output	[3:0]	mac_rgmii_connection_rgmii_out;
	input		mac_rgmii_connection_rx_control;
	output		mac_rgmii_connection_tx_control;
	input		mac_rx_clock_connection_clk;
	input		mac_status_connection_set_10;
	input		mac_status_connection_set_1000;
	output		mac_status_connection_eth_mode;
	output		mac_status_connection_ena_10;
	input		mac_tx_clock_connection_clk;
	input		reset_reset_n;
endmodule

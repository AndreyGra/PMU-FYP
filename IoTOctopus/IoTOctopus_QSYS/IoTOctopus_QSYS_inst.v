	IoTOctopus_QSYS u0 (
		.clk_32_clk                        (<connected-to-clk_32_clk>),                        //                  clk_32.clk
		.mac_mdio_connection_mdc           (<connected-to-mac_mdio_connection_mdc>),           //     mac_mdio_connection.mdc
		.mac_mdio_connection_mdio_in       (<connected-to-mac_mdio_connection_mdio_in>),       //                        .mdio_in
		.mac_mdio_connection_mdio_out      (<connected-to-mac_mdio_connection_mdio_out>),      //                        .mdio_out
		.mac_mdio_connection_mdio_oen      (<connected-to-mac_mdio_connection_mdio_oen>),      //                        .mdio_oen
		.mac_misc_connection_magic_wakeup  (<connected-to-mac_misc_connection_magic_wakeup>),  //     mac_misc_connection.magic_wakeup
		.mac_misc_connection_magic_sleep_n (<connected-to-mac_misc_connection_magic_sleep_n>), //                        .magic_sleep_n
		.mac_misc_connection_ff_tx_crc_fwd (<connected-to-mac_misc_connection_ff_tx_crc_fwd>), //                        .ff_tx_crc_fwd
		.mac_misc_connection_ff_tx_septy   (<connected-to-mac_misc_connection_ff_tx_septy>),   //                        .ff_tx_septy
		.mac_misc_connection_tx_ff_uflow   (<connected-to-mac_misc_connection_tx_ff_uflow>),   //                        .tx_ff_uflow
		.mac_misc_connection_ff_tx_a_full  (<connected-to-mac_misc_connection_ff_tx_a_full>),  //                        .ff_tx_a_full
		.mac_misc_connection_ff_tx_a_empty (<connected-to-mac_misc_connection_ff_tx_a_empty>), //                        .ff_tx_a_empty
		.mac_misc_connection_rx_err_stat   (<connected-to-mac_misc_connection_rx_err_stat>),   //                        .rx_err_stat
		.mac_misc_connection_rx_frm_type   (<connected-to-mac_misc_connection_rx_frm_type>),   //                        .rx_frm_type
		.mac_misc_connection_ff_rx_dsav    (<connected-to-mac_misc_connection_ff_rx_dsav>),    //                        .ff_rx_dsav
		.mac_misc_connection_ff_rx_a_full  (<connected-to-mac_misc_connection_ff_rx_a_full>),  //                        .ff_rx_a_full
		.mac_misc_connection_ff_rx_a_empty (<connected-to-mac_misc_connection_ff_rx_a_empty>), //                        .ff_rx_a_empty
		.mac_rgmii_connection_rgmii_in     (<connected-to-mac_rgmii_connection_rgmii_in>),     //    mac_rgmii_connection.rgmii_in
		.mac_rgmii_connection_rgmii_out    (<connected-to-mac_rgmii_connection_rgmii_out>),    //                        .rgmii_out
		.mac_rgmii_connection_rx_control   (<connected-to-mac_rgmii_connection_rx_control>),   //                        .rx_control
		.mac_rgmii_connection_tx_control   (<connected-to-mac_rgmii_connection_tx_control>),   //                        .tx_control
		.mac_rx_clock_connection_clk       (<connected-to-mac_rx_clock_connection_clk>),       // mac_rx_clock_connection.clk
		.mac_status_connection_set_10      (<connected-to-mac_status_connection_set_10>),      //   mac_status_connection.set_10
		.mac_status_connection_set_1000    (<connected-to-mac_status_connection_set_1000>),    //                        .set_1000
		.mac_status_connection_eth_mode    (<connected-to-mac_status_connection_eth_mode>),    //                        .eth_mode
		.mac_status_connection_ena_10      (<connected-to-mac_status_connection_ena_10>),      //                        .ena_10
		.mac_tx_clock_connection_clk       (<connected-to-mac_tx_clock_connection_clk>),       // mac_tx_clock_connection.clk
		.reset_reset_n                     (<connected-to-reset_reset_n>)                      //                   reset.reset_n
	);


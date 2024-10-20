onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group tb /SYS_TOP_TB/DIV_RATIO
add wave -noupdate -expand -group tb /SYS_TOP_TB/framing_error_TB
add wave -noupdate -expand -group tb /SYS_TOP_TB/parity_error_TB
add wave -noupdate -expand -group tb /SYS_TOP_TB/REF_CLK_PERIOD
add wave -noupdate -expand -group tb /SYS_TOP_TB/REF_CLK_TB
add wave -noupdate -expand -group tb /SYS_TOP_TB/RST_N_TB
add wave -noupdate -expand -group tb /SYS_TOP_TB/UART_CLK_PERIOD
add wave -noupdate -expand -group tb /SYS_TOP_TB/UART_CLK_TB
add wave -noupdate -expand -group tb /SYS_TOP_TB/UART_RX_IN_TB
add wave -noupdate -expand -group tb /SYS_TOP_TB/UART_TX_O_TB
add wave -noupdate -expand -group tb /SYS_TOP_TB/UART_TX_PERIOD
add wave -noupdate -expand -group rx_parity /SYS_TOP_TB/DUT/UART_U0/U0_UART_RX/parity_check_u0/calculated_parity
add wave -noupdate -expand -group rx_parity /SYS_TOP_TB/DUT/UART_U0/U0_UART_RX/parity_check_u0/par_check_en
add wave -noupdate -expand -group rx_parity -color Gold /SYS_TOP_TB/DUT/UART_U0/U0_UART_RX/parity_check_u0/par_err
add wave -noupdate -expand -group rx_parity /SYS_TOP_TB/DUT/UART_U0/U0_UART_RX/parity_check_u0/parity_bit
add wave -noupdate -expand -group rx_parity /SYS_TOP_TB/DUT/UART_U0/U0_UART_RX/parity_check_u0/PAR_TYP
add wave -noupdate -expand -group {rx edge bit cnt } /SYS_TOP_TB/DUT/UART_U0/U0_UART_RX/edge_bit_counter_u0/bit_count
add wave -noupdate -expand -group {rx edge bit cnt } /SYS_TOP_TB/DUT/UART_U0/U0_UART_RX/edge_bit_counter_u0/bit_done
add wave -noupdate -expand -group {rx edge bit cnt } /SYS_TOP_TB/DUT/UART_U0/U0_UART_RX/edge_bit_counter_u0/edge_count
add wave -noupdate -expand -group {rx edge bit cnt } /SYS_TOP_TB/DUT/UART_U0/U0_UART_RX/edge_bit_counter_u0/edge_done
add wave -noupdate -expand -group {rx edge bit cnt } /SYS_TOP_TB/DUT/UART_U0/U0_UART_RX/edge_bit_counter_u0/enable
add wave -noupdate -expand -group rx /SYS_TOP_TB/DUT/UART_U0/U0_UART_RX/CLK
add wave -noupdate -expand -group rx /SYS_TOP_TB/DUT/UART_U0/U0_UART_RX/Data_Valid
add wave -noupdate -expand -group rx /SYS_TOP_TB/DUT/UART_U0/U0_UART_RX/P_DATA
add wave -noupdate -expand -group rx -radix binary /SYS_TOP_TB/DUT/UART_U0/U0_UART_RX/parity_check_u0/P_DATA
add wave -noupdate -expand -group rx -color Gold /SYS_TOP_TB/DUT/UART_U0/U0_UART_RX/Parity_Error
add wave -noupdate -expand -group rx /SYS_TOP_TB/DUT/UART_U0/U0_UART_RX/FSM_u0/cs
add wave -noupdate -expand -group rx /SYS_TOP_TB/UART_TX_CLK
add wave -noupdate -expand -group rx -color Magenta /SYS_TOP_TB/DUT/UART_U0/U0_UART_RX/RX_IN
add wave -noupdate -expand -group rx /SYS_TOP_TB/DUT/UART_U0/U0_UART_RX/Stop_Error
add wave -noupdate -expand -group rx_sampler /SYS_TOP_TB/DUT/UART_U0/U0_UART_RX/data_sampling_u0/dat_sam_en
add wave -noupdate -expand -group rx_sampler /SYS_TOP_TB/DUT/UART_U0/U0_UART_RX/data_sampling_u0/edge_count
add wave -noupdate -expand -group rx_sampler -color Gold /SYS_TOP_TB/DUT/UART_U0/U0_UART_RX/data_sampling_u0/sampled_bit
add wave -noupdate -expand -group rx_sampler /SYS_TOP_TB/DUT/UART_U0/U0_UART_RX/data_sampling_u0/sampled_bits
add wave -noupdate -expand -group rx_sampler /SYS_TOP_TB/DUT/UART_U0/U0_UART_RX/data_sampling_u0/sampling_done
add wave -noupdate -expand -group d_sync /SYS_TOP_TB/DUT/DATA_SYNC_U0/bus_enable
add wave -noupdate -expand -group d_sync /SYS_TOP_TB/DUT/DATA_SYNC_U0/enable_pulse
add wave -noupdate -expand -group d_sync /SYS_TOP_TB/DUT/DATA_SYNC_U0/sync_bus
add wave -noupdate -expand -group d_sync /SYS_TOP_TB/DUT/DATA_SYNC_U0/unsync_bus
add wave -noupdate -expand -group sys_ctrl /SYS_TOP_TB/DUT/SYS_CTRL_U0/ALU_EN
add wave -noupdate -expand -group sys_ctrl /SYS_TOP_TB/DUT/SYS_CTRL_U0/ALU_FUN
add wave -noupdate -expand -group sys_ctrl /SYS_TOP_TB/DUT/SYS_CTRL_U0/ALU_OUT
add wave -noupdate -expand -group sys_ctrl /SYS_TOP_TB/DUT/SYS_CTRL_U0/ALU_OUT_Valid
add wave -noupdate -expand -group sys_ctrl /SYS_TOP_TB/DUT/SYS_CTRL_U0/CLK
add wave -noupdate -expand -group sys_ctrl /SYS_TOP_TB/DUT/SYS_CTRL_U0/ClkDiv_EN
add wave -noupdate -expand -group sys_ctrl /SYS_TOP_TB/DUT/SYS_CTRL_U0/ClkGating_EN
add wave -noupdate -expand -group sys_ctrl /SYS_TOP_TB/DUT/SYS_CTRL_U0/cs
add wave -noupdate -expand -group sys_ctrl /SYS_TOP_TB/DUT/SYS_CTRL_U0/FIFO_WrData
add wave -noupdate -expand -group sys_ctrl /SYS_TOP_TB/DUT/SYS_CTRL_U0/FIFO_FULL
add wave -noupdate -expand -group sys_ctrl /SYS_TOP_TB/DUT/SYS_CTRL_U0/FIFO_WrInc
add wave -noupdate -expand -group sys_ctrl /SYS_TOP_TB/DUT/SYS_CTRL_U0/RegFile_Address
add wave -noupdate -expand -group sys_ctrl /SYS_TOP_TB/DUT/SYS_CTRL_U0/RegFile_RdData
add wave -noupdate -expand -group sys_ctrl /SYS_TOP_TB/DUT/SYS_CTRL_U0/RegFile_RdData_Valid
add wave -noupdate -expand -group sys_ctrl /SYS_TOP_TB/DUT/SYS_CTRL_U0/RegFile_RdEn
add wave -noupdate -expand -group sys_ctrl /SYS_TOP_TB/DUT/SYS_CTRL_U0/RegFile_WrData
add wave -noupdate -expand -group sys_ctrl /SYS_TOP_TB/DUT/SYS_CTRL_U0/RegFile_WrEn
add wave -noupdate -expand -group sys_ctrl /SYS_TOP_TB/DUT/SYS_CTRL_U0/RST
add wave -noupdate -expand -group sys_ctrl /SYS_TOP_TB/DUT/SYS_CTRL_U0/RX_D_VLD
add wave -noupdate -expand -group sys_ctrl /SYS_TOP_TB/DUT/SYS_CTRL_U0/RX_P_Data
add wave -noupdate -expand -group sys_ctrl /SYS_TOP_TB/DUT/SYS_CTRL_U0/WIDTH
add wave -noupdate /SYS_TOP_TB/DUT/RegFile_U0/WrData
add wave -noupdate -expand -group rf /SYS_TOP_TB/DUT/RegFile_U0/Address
add wave -noupdate -expand -group rf /SYS_TOP_TB/DUT/RegFile_U0/CLK
add wave -noupdate -expand -group rf /SYS_TOP_TB/DUT/RegFile_U0/RdData
add wave -noupdate -expand -group rf /SYS_TOP_TB/DUT/RegFile_U0/RdData_VLD
add wave -noupdate -expand -group rf /SYS_TOP_TB/DUT/RegFile_U0/RdEn
add wave -noupdate -expand -group rf -childformat {{{/SYS_TOP_TB/DUT/RegFile_U0/regArr[2]} -radix binary}} -expand -subitemconfig {{/SYS_TOP_TB/DUT/RegFile_U0/regArr[2]} {-radix binary}} /SYS_TOP_TB/DUT/RegFile_U0/regArr
add wave -noupdate -expand -group rf /SYS_TOP_TB/DUT/RegFile_U0/WrEn
add wave -noupdate -expand -group ALU /SYS_TOP_TB/DUT/ALU_U0/A
add wave -noupdate -expand -group ALU /SYS_TOP_TB/DUT/ALU_U0/B
add wave -noupdate -expand -group ALU /SYS_TOP_TB/DUT/ALU_U0/ALU_FUN
add wave -noupdate -expand -group ALU /SYS_TOP_TB/DUT/ALU_U0/ALU_OUT
add wave -noupdate -expand -group ALU /SYS_TOP_TB/DUT/ALU_U0/CLK
add wave -noupdate -expand -group ALU /SYS_TOP_TB/DUT/ALU_U0/EN
add wave -noupdate -expand -group ALU /SYS_TOP_TB/DUT/ALU_U0/OUT_VALID
add wave -noupdate -expand -group fifo -expand /SYS_TOP_TB/DUT/FIFO_U0/FIFO_MEM_CNTRL_U0/FIFO_BUFFER
add wave -noupdate -expand -group fifo /SYS_TOP_TB/DUT/FIFO_U0/full
add wave -noupdate -expand -group fifo -color Magenta /SYS_TOP_TB/DUT/FIFO_U0/empty
add wave -noupdate -expand -group fifo /SYS_TOP_TB/DUT/FIFO_U0/r_addr
add wave -noupdate -expand -group fifo /SYS_TOP_TB/DUT/FIFO_U0/rd_data
add wave -noupdate -expand -group fifo /SYS_TOP_TB/DUT/FIFO_U0/w_addr
add wave -noupdate -expand -group fifo /SYS_TOP_TB/DUT/FIFO_U0/wr_data
add wave -noupdate -expand -group tx /SYS_TOP_TB/DUT/UART_U0/U0_UART_TX/fsm/cs
add wave -noupdate -expand -group tx /SYS_TOP_TB/DUT/UART_U0/U0_UART_TX/BUSY
add wave -noupdate -expand -group tx /SYS_TOP_TB/DUT/UART_U0/U0_UART_TX/CLK
add wave -noupdate -expand -group tx /SYS_TOP_TB/DUT/UART_U0/U0_UART_TX/DATA_VALID
add wave -noupdate -expand -group tx -radix hexadecimal /SYS_TOP_TB/DUT/UART_U0/U0_UART_TX/P_DATA
add wave -noupdate -expand -group tx -color Gold /SYS_TOP_TB/DUT/UART_U0/U0_UART_TX/TX_OUT
add wave -noupdate -expand -group tx_ser /SYS_TOP_TB/DUT/UART_U0/U0_UART_TX/Serializer/counter
add wave -noupdate -expand -group tx_ser /SYS_TOP_TB/DUT/UART_U0/U0_UART_TX/Serializer/DATA_VALID
add wave -noupdate -expand -group tx_ser /SYS_TOP_TB/DUT/UART_U0/U0_UART_TX/Serializer/P_DATA
add wave -noupdate -expand -group tx_ser /SYS_TOP_TB/DUT/UART_U0/U0_UART_TX/Serializer/SER_DATA
add wave -noupdate -expand -group tx_ser /SYS_TOP_TB/DUT/UART_U0/U0_UART_TX/Serializer/SER_DONE
add wave -noupdate -expand -group tx_ser /SYS_TOP_TB/DUT/UART_U0/U0_UART_TX/Serializer/SER_EN
add wave -noupdate -expand -group tx_ser /SYS_TOP_TB/DUT/UART_U0/U0_UART_TX/Serializer/shift_reg
add wave -noupdate -radix unsigned /SYS_TOP_TB/DUT/UART_U0/U0_UART_RX/Prescale
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {177356541 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 345
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {745898680 ps}

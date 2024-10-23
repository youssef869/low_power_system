
############################  Search PATH ################################

lappend search_path /home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys
lappend search_path /home/IC/Projects/System/RTL

########################### Define Top Module ############################
                                                   
set top_module SYS_TOP_dft

######################### Formality Setup File ###########################

set synopsys_auto_setup true

set_svf "../../DFT/$top_module.svf"


####################### Read Reference tech libs ########################
 

set SSLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

read_db -container Ref [list $SSLIB $TTLIB $FFLIB]

###################  Read Reference Design Files ######################## 

read_sverilog -container Ref "ALU.sv"
read_sverilog -container Ref "DF_SYNC.sv"
read_sverilog -container Ref "FIFO_MEM_CNTRL.sv"
read_sverilog -container Ref "FIFO_RD.sv"
read_sverilog -container Ref "FIFO_WR.sv"
read_sverilog -container Ref "FIFO.sv"
read_sverilog -container Ref "CLKDIV_MUX.sv"
read_sverilog -container Ref "Clk_Div.sv"
read_sverilog -container Ref "CLK_GATE.sv"
read_sverilog -container Ref "DATA_SYNC.sv"
read_sverilog -container Ref "RegFile.sv"
read_sverilog -container Ref "PULSE_GEN.sv"
read_sverilog -container Ref "RST_SYNC.sv"
read_sverilog -container Ref "SYS_CTRL.sv"
read_sverilog -container Ref "data_sampling.sv"
read_sverilog -container Ref "desarilzer.sv"
read_sverilog -container Ref "edge_bit_counter.sv"
read_sverilog -container Ref "parity_check.sv"
read_sverilog -container Ref "stop_check.sv"
read_sverilog -container Ref "start_check.sv"
read_sverilog -container Ref "UART_RX.sv"
read_sverilog -container Ref "UART_RX_FSM.sv"
read_sverilog -container Ref "MUX_4x1.sv"
read_sverilog -container Ref "MUX_2x1.sv"
read_sverilog -container Ref "Parity_Calc.sv"
read_sverilog -container Ref "serializer.sv"
read_sverilog -container Ref "UART_TX_FSM.sv"
read_sverilog -container Ref "UART_TX.sv"
read_sverilog -container Ref "UART.sv"
read_sverilog -container Ref "SYS_TOP_dft.sv"

######################## set the top Reference Design ######################## 

set_reference_design SYS_TOP_dft
set_top SYS_TOP_dft

####################### Read Implementation tech libs ######################## 

read_db -container Imp [list $SSLIB $TTLIB $FFLIB]

#################### Read Implementation Design Files ######################## 

read_verilog -container Imp -netlist "/home/IC/Projects/System/Backend/DFT/netlists/SYS_TOP_dft.v"

####################  set the top Implementation Design ######################

set_implementation_design SYS_TOP_dft
set_top SYS_TOP_dft

############################### Don't verify #################################

# do not verify scan in & scan out ports as a compare point as it is existed only after synthesis and not existed in the RTL

#scan in
set_dont_verify_points -type port Ref:/WORK/*/SCAN_IN
set_dont_verify_points -type port Imp:/WORK/*/SCAN_IN

#scan_out
set_dont_verify_points -type port Ref:/WORK/*/SCAN_OUT
set_dont_verify_points -type port Imp:/WORK/*/SCAN_OUT

############################### contants #####################################

# all atpg enable(test_mode, scan_enable) are zero during formal compare

#test_mode
set_constant Ref:/WORK/*/TEST_MODE 0
set_constant Imp:/WORK/*/TEST_MODE 0

#scan_enable
set_constant Ref:/WORK/*/SCAN_EN 0
set_constant Imp:/WORK/*/SCAN_EN 0

########################### matching Compare points ##########################

match

################################# verify #####################################

set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

report_passing_points > "reports/passing_points.rpt"
report_failing_points > "reports/failing_points.rpt"
report_aborted_points > "reports/aborted_points.rpt"
report_unverified_points > "reports/unverified_points.rpt"


start_gui

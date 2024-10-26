
########################### Define Top Module ############################
                                                   
set top_module SYS_TOP

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

############################# Formality Setup File ##########################
                                                   
set_svf $top_module.svf

################## Design Compiler Library Files #setup ######################

puts "###########################################"
puts "#      #setting Design Libraries          #"
puts "###########################################"

#Add the path of the libraries and RTL files to the search_path variable

set PROJECT_PATH /home/IC/Projects/System/
set LIB_PATH     /home/IC/tsmc_fb_cl013g_sc/aci/sc-m

lappend search_path $LIB_PATH/synopsys
lappend search_path $PROJECT_PATH/RTL


set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

## Standard Cell libraries 
set target_library [list $SSLIB $TTLIB $FFLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB]  

######################## Reading RTL Files #################################

puts "###########################################"
puts "#             Reading RTL Files           #"
puts "###########################################"

set file_format sverilog

#ALU
analyze -format $file_format ALU.sv
#FIFO
analyze -format $file_format DF_SYNC.sv
analyze -format $file_format FIFO_MEM_CNTRL.sv
analyze -format $file_format FIFO_RD.sv
analyze -format $file_format FIFO_WR.sv
analyze -format $file_format FIFO.sv
#CLK_DIVIDER MUX
analyze -format $file_format CLKDIV_MUX.sv
#CLK_DIVIDER
analyze -format $file_format Clk_Div.sv
#CLK_GATING
analyze -format $file_format CLK_GATE.sv
#DATA_SYNC
analyze -format $file_format DATA_SYNC.sv
#REGISTER_FILE
analyze -format $file_format RegFile.sv
#PULSE_GENERATOR
analyze -format $file_format PULSE_GEN.sv
#RST_SYNC
analyze -format $file_format RST_SYNC.sv
#SYS_CONTROLLER
analyze -format $file_format SYS_CTRL.sv
#UART_RX
analyze -format $file_format data_sampling.sv
analyze -format $file_format desarilzer.sv
analyze -format $file_format edge_bit_counter.sv
analyze -format $file_format parity_check.sv
analyze -format $file_format stop_check.sv
analyze -format $file_format start_check.sv
analyze -format $file_format UART_RX.sv
analyze -format $file_format UART_RX_FSM.sv
#UART_TX
analyze -format $file_format MUX_4x1.sv
analyze -format $file_format Parity_Calc.sv
analyze -format $file_format serializer.sv
analyze -format $file_format UART_TX.sv
analyze -format $file_format UART_TX_FSM.sv
#UART_TOP
analyze -format $file_format UART.sv
#SYS_TOP
analyze -format $file_format SYS_TOP.sv

elaborate -lib WORK SYS_TOP

###################### Defining toplevel ###################################

current_design $top_module

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## Liniking All The Design Parts ########"
puts "###############################################"

link 

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design >> reports/check_design.rpt

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"

source -echo ./cons.tcl

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

compile 

##################### Close Formality Setup file ###########################

set_svf -off

#############################################################################
# Write out files
#############################################################################

write_file -format verilog -hierarchy -output netlists/$top_module.ddc
write_file -format verilog -hierarchy -output netlists/$top_module.v
write_sdf  sdf/$top_module.sdf
write_sdc  -nosplit sdc/$top_module.sdc

####################### reporting ##########################################

report_area -hierarchy > reports/area.rpt
report_power -hierarchy > reports/power.rpt
report_timing -delay_type min -max_paths 20 > reports/hold.rpt
report_timing -delay_type max -max_paths 20 > reports/setup.rpt
report_clock -attributes > reports/clocks.rpt
report_constraint -all_violators -nosplit > reports/constraints.rpt

############################################################################
# DFT Preparation Section
############################################################################

set flops_per_chain 100

set num_flops [sizeof_collection [all_registers -edge_triggered]]

set num_chains [expr $num_flops / $flops_per_chain + 1 ]

################# starting graphical user interface #######################

gui_start

#exit
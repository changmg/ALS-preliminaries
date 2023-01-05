#
# Constraints for the ORCA TOP level design
# by AS on 4/10/03
#
# Last modified on 2005.02.22
#

# Time Unit: ns
# Cap Unit : pf

set io_lib cb13io320_tsmc_max
set max_opcond cb13fs120_tsmc_max


# PCI clock at 66 MHz
create_clock -period 15.0 -name PCI_CLK [get_ports pclk]
# System clock at 125 MHz
create_clock -period 8.0 -name SYS_CLK [get_ports sys_clk]
# System clock at 250 MHz
create_clock -period 4.0 -name SYS_2x_CLK [get_ports sys_2x_clk]
# SDRAM clock at 133 MHz
create_clock -period 7.5 -name SDRAM_CLK [get_ports sdram_clk]

set_clock_uncertainty -setup 0.2 [get_clocks SYS_CLK]
set_clock_uncertainty -setup 0.2 [get_clocks SYS_2x_CLK]
set_clock_uncertainty -setup 0.3 [get_clocks PCI_CLK]
set_clock_uncertainty -setup 0.2 [get_clocks SDRAM_CLK]

# False paths between clock domains
set_clock_groups -asynchronous -group {SYS_CLK SYS_2x_CLK} -group {PCI_CLK} -group {SDRAM_CLK}

set_operating_conditions $max_opcond

# Filter out the clock ports, scan_en and test_mode
set inputs [remove_from_collection [all_inputs] [get_ports "*clk* scan_en test_mode"]]

set sdram_inputs  [get_ports sd_* -filter "port_direction == in"]
set sdram_outputs [get_ports sd_* -filter "port_direction == out"]

set pci_inputs  [remove_from_collection $inputs $sdram_inputs]
set pci_outputs [remove_from_collection [all_outputs] $sdram_outputs]

# Constrain mode ports

# Constrain PCI ports
set_input_delay 8.0 -clock PCI_CLK $pci_inputs
set_output_delay 7.0 -clock PCI_CLK $pci_outputs
set_driving_cell $pci_inputs\
    -library $io_lib \
    -lib_cell pc3b03 \
    -pin CIN \
    -input_transition_rise 1.0 \
    -input_transition_fall 1.0 \
    -from_pin PAD
set_load [load_of [get_lib_pins $io_lib/pc3b03/I]] $pci_outputs

# Constrain SDRAM ports
set_input_delay 3.0 -clock SDRAM_CLK $sdram_inputs
set_output_delay 3.0 -clock SDRAM_CLK $sdram_outputs
set_driving_cell [get_ports sd_DQ_in] \
    -library $io_lib \
    -lib_cell pc3b05 \
    -pin CIN \
    -input_transition_rise 0.5 \
    -input_transition_fall 0.5 \
    -from_pin PAD
set_load [load_of [get_lib_pins $io_lib/pc3o05/I]] $sdram_outputs
set_load [load_of [get_lib_pins $io_lib/pc3b05/I]] [get_ports sd_DQ_out]
set_load [load_of [get_lib_pins $io_lib/pc3b05/OEN]] [get_ports sd_DQ_en]

# Set up constraints for clock gating
set_clock_gating_check -setup 0.300 -hold 0.300 [get_designs BLENDER*]

set_scan_configuration -style multiplexed_flip_flop

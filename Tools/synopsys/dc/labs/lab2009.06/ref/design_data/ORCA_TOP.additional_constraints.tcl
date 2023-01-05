# Additional constraints taken from ORCA 2.53 DC compile script

# Make clocks, scan_en, and constants DRC free
set_auto_disable_drc_nets -all

# Set clocks as ideal networks
set_ideal_network [get_ports "pclk sdram_clk sys_clk sys_2x_clk"]

# Make all reset signals ideal
set_ideal_network -no_propagate [get_nets pci_rst_n]
set_ideal_network -no_propagate [get_nets sdram_rst_n]
set_ideal_network -no_propagate [get_nets sys_rst_n]
set_ideal_network -no_propagate [get_nets sys_2x_rst_n]

# Already in DC-RM
#group_path -name INS -from [all_inputs] -critical_range 10
#group_path -name OUTS -to [all_outputs] -critical_range 10

# By default, clocks are not marked as ideal networks.
# There's clock/data mixing in the SDRAM clock domain
# Make the SDR clock an ideal network.
# Otherwise the date paths will see the large load of the clock!
#set_ideal_network [get_ports sdram_clk]
#### Now done in constraints file for all clocks by default!  Is there a downside???


# SDRAM interface
# In the RTL, the SDRAM output MUX was selected as mx02d4
# Do not allow DC to change these DDR output muxes:
set_dont_touch [get_cells I_SDRAM_TOP/I_SDRAM_IF/sd_mux*]
# The muxes should drive the output IOPADS directly.
# For ORCA_TOP, this means that  no logic should
# be inserted between the mux and the output port
set_ideal_network [get_pins I_SDRAM_TOP/I_SDRAM_IF/sd_mux*/Z]
### not needed because sdram_clk is ideal, therefore also the mux-outputs

# Leave optimization of the scan_en buffer tree to the physical tools
set_false_path -from [get_ports scan_en]

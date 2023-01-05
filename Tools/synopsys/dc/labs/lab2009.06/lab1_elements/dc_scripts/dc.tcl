source -echo -verbose dc_setup.tcl

#################################################################################
# Design Compiler Top-Level Reference Methodology Script for Hierarchical Flow
# Script: dc_top.tcl
# Version: B-2008.09-SP1 (Nov. 10, 2008)
# Copyright (C) 2007, 2008 Synopsys All rights reserved.
#################################################################################

#################################################################################
# Additional Variables
#
# Add any additional variables needed for your flow here.
#################################################################################

# No additional flow variables are being recommended

#################################################################################
# Setup for Formality verification
#
# SVF should always be written to allow Formality verification
# for advanced optimizations.
#################################################################################

set_svf ${RESULTS_DIR}/${DESIGN_NAME}.mapped.svf

#################################################################################
# Setup SAIF Name Mapping Database
#
# Include an RTL SAIF for better power optimization and analysis.
#
# saif_map should be issued prior to RTL elaboration to create a name mapping
# database for better annotation.
################################################################################

# saif_map -start

#################################################################################
# Read in the RTL Design
#
# Read in the RTL source files or read in the elaborated design (DDC).
# Use the -format option to specify: verilog, sverilog, or vhdl as needed.
#################################################################################

define_design_lib WORK -path ./WORK

# Do not include the RTL for the hierarchical designs
# when reading in the top-level design.
analyze -format vhdl ${RTL_SOURCE_FILES}
elaborate ${DESIGN_NAME}

# Remove the RTL version of the hierarchical blocks in case they were read in

if { ${DDC_HIER_DESIGNS} != ""} {
  remove_design -hierarchy ${DDC_HIER_DESIGNS}
}

if { ${DC_ILM_HIER_DESIGNS} != ""} {
  remove_design -hierarchy ${DC_ILM_HIER_DESIGNS}
}

if { ${ICC_ILM_HIER_DESIGNS} != ""} {
  remove_design -hierarchy ${ICC_ILM_HIER_DESIGNS}
}

# Store the elaborated design without the hierarchical physical blocks
write -hierarchy -format ddc -output ${RESULTS_DIR}/${DESIGN_NAME}.elab.ddc

# OR

# You can read an elaborated design from the same release.
# Using an elaborated design from an older release will not give the best results.

# Important: Make sure that the elaborated DDC does not contain the physical subdesigns (removed above).

# read_ddc ${DESIGN_NAME}.elab.ddc

# DO NOT LINK yet or Presto will rebuild the RTL version of the physical blocks.
# Finish loading the physical blocks below before linking.

#################################################################################
# Load Hierarchical Designs
#################################################################################

# Read in compiled hierarchical blocks
# For topographical mode top-level synthesis all physical blocks are required to
# be compiled in topographical mode.

foreach design ${DDC_HIER_DESIGNS} {
  read_ddc ${design}.mapped.ddc
}

foreach design ${DC_ILM_HIER_DESIGNS} {
  read_ddc ${design}.mapped.ILM.ddc
}

current_design ${DESIGN_NAME}

link

# Check to make sure that all the correct designs were linked
# Pay special attention to the source location of your physical blocks
list_designs -show_file

# Read in CTL test models for ICC-ILM blocks to ensure DFT info is present
foreach design ${ICC_ILM_HIER_DESIGNS} {
  read_test_model -format ctl -design ${design} ${design}.mapped.ctl
}

# Don't optimize ${DDC_HIER_DESIGNS}
if { ${DDC_HIER_DESIGNS} != ""} {
  if {[shell_is_in_topographical_mode]} {
    # Hierarchical DDC (non-ILM) blocks must be marked as physical hierarchy
    set_physical_hierarchy [sub_instances_of -hierarchy -of_references ${DDC_HIER_DESIGNS} ${DESIGN_NAME}]
    get_physical_hierarchy
  } else {
    # Don't touch these blocks in DC-WLM
    set_dont_touch [get_designs ${DDC_HIER_DESIGNS}]
  }
}

# Prevent optimization of top-level logic based on physical block contents
# (required for hierarchical formal verification flow)
set HIER_DESIGNS "${DDC_HIER_DESIGNS} ${DC_ILM_HIER_DESIGNS} ${ICC_ILM_HIER_DESIGNS}"
set_boundary_optimization ${HIER_DESIGNS} false
set compile_preserve_subdesign_interfaces true

# for DCT workshop
source -echo -verbose ${DESIGN_NAME}.constraints.tcl
source -echo -verbose ${DESIGN_NAME}.additional_constraints.tcl

#################################################################################
# Apply Logical Design Constraints
#################################################################################

# Read budgeted SDC for hierarchical flow
read_sdc ${DESIGN_NAME}.sdc

# You can enable analysis and optimization for multiple clocks per register.
# To use this, you must constrain to remove false interactions between mutually exclusive
# clocks.  This is needed to prevent unnecessary analysis that can result in
# a significant runtime increase with this feature enabled.
#
# set_clock_groups -physically_exclusive | -logically_exclusive | -asynchronous \
#                  -group {CLKA, CLKB} -group {CLKC, CLKD} 
#
# set timing_enable_multiple_clocks_per_reg true

#################################################################################
# Apply The Operating Conditions
#################################################################################

# Set operating condition on top level
# Comment out if these are already set in your constraints file.

#set_operating_conditions -max <max_opcond> -min <min_opcond>

#################################################################################
# Create Default Path Groups
#
# Separating these paths can help improve optimization.
# Remove these path group settings if user path groups have already been defined.
#################################################################################

set ports_clock_root [get_ports [all_fanout -flat -clock_tree -level 0]] 
group_path -name REGOUT -to [all_outputs] 
group_path -name REGIN -from [remove_from_collection [all_inputs] $ports_clock_root] 
group_path -name FEEDTHROUGH -from [remove_from_collection [all_inputs] $ports_clock_root] -to [all_outputs]

#################################################################################
# Power Optimization Section
#################################################################################

    #############################################################################
    # Clock Gating Setup
    #############################################################################

    # Default clock_gating_style suits most designs.  Change only if necessary.
    # set_clock_gating_style ...

    # Clock gate insertion is now performed during compile_ultra -gate_clock
    # so insert_clock_gating is no longer recommended at this step.

    # For better timing optimization of enable logic, clock latency for 
    # clock gating cells can be optionally specified.

    # set_clock_gate_latency -clock <clock_name> -stage <stage_num> \
    #         -fanout_latency {fo_range1 latency_val1 fo_range2 latency_val2 ...}

    #############################################################################
    # Apply Power Optimization Constraints
    #############################################################################

    # Include a SAIF file, if possible, for power optimization.  If a SAIF file
    # is not provided, the default toggle rate of 0.1 will be used for propagating
    # switching activity.

    # read_saif -auto_map_names -input ${DESIGN_NAME}.saif -instance < DESIGN_INSTANCE > -verbose

    # Remove set_max_total_power power optimization constraint from scripts in 2008.09
    # Enable both of the following settings for total power optimization

    # set_max_leakage_power 0
    # set_max_dynamic_power 0

    if {[shell_is_in_topographical_mode]} {
      # Setting power constraints will automatically enable power prediction using clock tree estimation.
      # If you are not setting any power constraints and you still want to report
      # correlated power, you can use the following command to turn on power prediction.

      # set_power_prediction true
    }

if {[shell_is_in_topographical_mode]} {

  ##################################################################################
  # Apply Physical Design Constraints
  #
  # Optional: Floorplan information can be read in here if available.
  # This is highly recommended for irregular floorplans.
  #
  # Floorplan constraints can be extracted from DEF files using
  # extract_physical_constraints OR provided from Tcl commands.
  #
  # DEF is the recommended input format to maximize the use of the latest
  # floorplan read capabilities of Design Compiler topographical mode.
  #
  ##################################################################################

  # Specify ignored layers for routing to improve correlation
  # Use the same ignored layers that will be used during place and route

  if { ${MIN_ROUTING_LAYER} != ""} {
    set_ignored_layers -min_routing_layer ${MIN_ROUTING_LAYER}
  }
  if { ${MAX_ROUTING_LAYER} != ""} {
    set_ignored_layers -max_routing_layer ${MAX_ROUTING_LAYER}
  }

  report_ignored_layers

  # If the macro names change after mapping and writing out the design due to
  # ungrouping or Verilog change_names renaming, it may be necessary to translate 
  # the names to correspond to the cell names that exist before compile.

  # During DEF constraint extraction, extract_physical_constraints automatically
  # matches DEF names back to precompile names in memory using standard matching rules.

  # Modify fuzzy_query_options if other characters are used for hierarchy separators
  # or bus names. 

  # set_fuzzy_query_options -hierarchical_separators {/ _ .} \
  #                         -bus_name_notations {[] __ ()} \
  #                         -class {cell pin port net} \
  #                         -show

  # Note:  The -site_row or -pre_route options are not needed to extract this info
  #        from the DEF file.  These are extracted automatically and saved in DDC.
  #        Only use these options if you want this info to be included in the
  #        ASCII output from "extract_physical_constraints -output".

  extract_physical_constraints ${DESIGN_NAME}.hier.def
  set_utilization 0.99  

  # OR

  # For Tcl constraints, the name matching feature must be explicitly enabled
  # and will also use the set_fuzzy_query_options setttings.  This should 
  # be turned off after the constraint read in order to minimize runtime.

  # set fuzzy_matching_enabled true 
  # source -echo -verbose ${DESIGN_NAME}.physical_constraints.tcl
  # set fuzzy_matching_enabled false 



  # Note: Include the -site_row or -pre_route options with either
  # write_physical_constraints or report_physical_constraints if you also
  # want to include these in the ASCII output files.  Site rows and pre-routes
  # are automatically extracted from the DEF and saved in the DDC even if these
  # options are not specified.

  # You can save the extracted constraints for fast loading next time.
  # write_physical_constraints -output ${DESIGN_NAME}.physical_constraints.tcl

  # Verify that all the desired physical constraints have been applied
  report_physical_constraints > ${REPORTS_DIR}/${DESIGN_NAME}.physical_constraints.rpt
}

#################################################################################
# Apply Additional Optimization Constraints
#################################################################################

# Prevent assignment statements in the Verilog netlist.
set_fix_multiple_port_nets -all -buffer_constants

#################################################################################
# Compile the Design
#
# Recommended Options:
#
#     -scan
#     -gate_clock
#     -retime
#     -timing_high_effort_script
#     -area_high_effort_script
#     -congestion
#     -num_cpus
#
# Use compile_ultra as your starting point. For test-ready compile, include
# the -scan option with the first compile and any subsequent compiles.
#
# Use -gate_clock to insert clock-gating logic during optimization.  This
# is now the recommended methodology for clock gating.
#
# Use -retime to enable adapative retiming optimization for further timing
# benefit without any runtime or memory overhead.
#
# The -timing_high_effort_script or the -area_high_effort_script option
# may also be used to try and improve the optimization results at the tradeoff
# of some additional runtime.
#
# The -congestion option (topographical mode only) enables specialized optimizations that
# reduce routing related congestion during synthesis.
# This option requires a license for Design Compiler Graphical.
#
# Use -num_cpus to enable multi-core optimization to improve runtime.  Note
# that this feature has special usage and license requirements.  See the following
# article for more info: https://solvnet.synopsys.com/retrieve/024947.html
#
#################################################################################

# Before running topographical mode synthesis for the first time, run
# "compile_ultra -check_only" to verify that your libraries and design
# will not fail during optimization in topographical mode.

# compile_ultra -check_only
# quit

compile_ultra


#################################################################################
# Write Out Final Design and Reports
#
#        .ddc:   Recommended binary format used for subsequent Design Compiler sessions
#    Milkyway:   Recommended binary format for IC Compiler
#        .v  :   Verilog netlist for ASCII flow (Formality, PrimeTime, VCS)
#       .spef:   Topographical mode parasitics for PrimeTime
#        .sdf:   SDF backannotated topographical mode timing for PrimeTime
#        .sdc:   SDC constraints for ASCII flow
#
#################################################################################

change_names -rules verilog -hierarchy

#################################################################################
# Write out Design Data
#################################################################################

if {[shell_is_in_topographical_mode]} {

  # Note: Include the -site_row or -pre_route options with write_physical_constraints
  # if you also want to include these in the ASCII output files.  Site rows and pre-routes
  # are automatically extracted from the DEF and saved in the DDC even if these
  # options are not specified.

  write_physical_constraints -output ${RESULTS_DIR}/${DESIGN_NAME}.mapped.physical_constraints.tcl

  # Write parasitics data from DCT placement for static timing analysis
  write_parasitics -output ${RESULTS_DIR}/${DESIGN_NAME}.mapped.spef

  # Write SDF backannotation data from DCT placement for static timing analysis
  write_sdf ${RESULTS_DIR}/${DESIGN_NAME}.mapped.sdf

  # Do not write out net RC info into SDC
  set write_sdc_output_lumped_net_capacitance false
  set write_sdc_output_net_resistance false
}

write_sdc -nosplit ${RESULTS_DIR}/${DESIGN_NAME}.mapped.sdc

# If SAIF is used, write out SAIF name mapping file for PrimeTime-PX
# saif_map -type ptpx -write_map ${RESULTS_DIR}/${DESIGN_NAME}.mapped.SAIF.namemap

#################################################################################
# Generate Final Reports
#################################################################################

report_qor > ${REPORTS_DIR}/${DESIGN_NAME}.mapped.qor.rpt
report_timing -transition_time -nets -attributes -nosplit > ${REPORTS_DIR}/${DESIGN_NAME}.mapped.timing.rpt

if {[shell_is_in_topographical_mode]} {
report_area -physical -nosplit > ${REPORTS_DIR}/${DESIGN_NAME}.mapped.area.rpt
} else {
report_area -nosplit > ${REPORTS_DIR}/${DESIGN_NAME}.mapped.area.rpt
}

if {[shell_is_in_topographical_mode]} {
  # report_congestion (topographical mode only) reports estimated routing related congestion
  # after topographical mode synthesis.
  # This command requires a license for Design Compiler Graphical.

  report_congestion > ${REPORTS_DIR}/${DESIGN_NAME}.mapped.congestion.rpt
}

# Use SAIF file for power analysis
# read_saif -auto_map_names -input ${DESIGN_NAME}.saif -instance < DESIGN_INSTANCE > -verbose

report_power -nosplit > ${REPORTS_DIR}/${DESIGN_NAME}.mapped.power.rpt
# report_clock_gating -nosplit > ${REPORTS_DIR}/${DESIGN_NAME}.mapped.clock_gating.rpt

# write out a netlist for the DCT Workshop Congestion Lab
write -format ddc -hierarchy -output ${RESULTS_DIR}/${DESIGN_NAME}.mapped_lab.ddc


#################################################################################
# Write out Top-Level Design Without Hierarchical Blocks
#
# When reading the design into other tools, read in all of the mapped
# hierarchical blocks and the mapped top-level design.
#
# For ICC: Replace the block Design Compiler ILMs with the complete block mapped netlist.
# For Formality: Verify each block (fm.tcl) and top (fm_top.tcl) separately.
#
#################################################################################

if { ${DDC_HIER_DESIGNS} != ""} {
  remove_design -hierarchy ${DDC_HIER_DESIGNS}
}

if { ${DC_ILM_HIER_DESIGNS} != ""} {
  remove_design -hierarchy ${DC_ILM_HIER_DESIGNS}
}

if { ${ICC_ILM_HIER_DESIGNS} != ""} {
  remove_design -hierarchy ${ICC_ILM_HIER_DESIGNS}
}

# Write and close SVF file
set_svf -off

write -format ddc -hierarchy -output ${RESULTS_DIR}/${DESIGN_NAME}.mapped.ddc
write -f verilog -hierarchy -output ${RESULTS_DIR}/${DESIGN_NAME}.mapped.v

# Note: Do not write out the Milkyway design partitions for hierarchical flow
# Milkyway design partitioning is done during hierarchical design planning in ICC (ICC-HRM)


exit

source -echo -verbose dc_setup.tcl

#################################################################################
# Formality Verification Script for
# Design Compiler Top-Level Reference Methodology Script for Hierarchical Flow
# Script: fm_top.tcl
# Version: B-2008.09-SP1 (Nov. 10, 2008)
# Copyright (C) 2007, 2008 Synopsys All rights reserved.
#################################################################################

#################################################################################
# Synopsys Auto Setup Mode
#################################################################################

set synopsys_auto_setup true

# Note: The Synopsys Auto Setup mode is less conservative than the Formality default mode, 
# and is more likely to result in a successful verification out-of-the-box.
#
# Using the Setting this variable will change the default values of the variables listed here below
# You may change any of these variables back to their default settings to be more conservative.
# Uncomment the appropriate lines below to revert back to their default settings:

	# set hdlin_ignore_parallel_case true
	# set hdlin_ignore_full_case true
	# set verification_verify_directly_undriven_output true
	# set hdlin_ignore_embedded_configuration false
	# set svf_ignore_unqualified_fsm_information true

# Other variables with changed default values are described in the next few sections.

#################################################################################
# Setup for handling undriven signals in the design
#################################################################################

# The Synopsys Auto Setup mode sets undriven signals in the reference design to "0" similar to DC.
# Undriven signals in the implementation design are set to "X".
# Uncomment the next line to revert back to the more conservative default setting:

	# set verification_set_undriven_signals BINARY:X

#################################################################################
# Setup for simulation/synthesis mismatch messaging
#################################################################################

# The Synopsys Auto Setup mode will produce warning messages, not error messages,
# when Formality encounters potential differences between simulation and synthesis.
# Uncomment the next line to revert back to the more conservative default setting:

	# set hdlin_error_on_mismatch_message true

#################################################################################
# Setup for Clock-gating
#################################################################################

# The Synopsys Auto Setup mode, along with the SVF file, will appropriately set the clock-gating variable.
# Otherwise, the user will need to notify Formality of clock-gating by uncommenting the next line:

	# set verification_clock_gate_hold_mode any

#################################################################################
# Setup for instantiated DW or Function-inferred DW
#################################################################################

# Set this variable ONLY if your design contains instantiated DW or function-inferred DW

	#set hdlin_dwroot "" ;# Enter the pathname to the top-level of the DC tree

#################################################################################
# Setup for handling missing design modules
#################################################################################

# If the design has missing blocks or missing components in both the reference and implementation designs,
# uncomment the following variable so that Formality can complete linking each design:

	# set hdlin_unresolved_modules black_box

#################################################################################
# Read in the SVF file(s)
#################################################################################

# Set this variable to point to individual SVF file(s) or to a directory containing SVF files.

set_svf ${RESULTS_DIR}/${DESIGN_NAME}.mapped.svf

#################################################################################
# Hierarchical Flow Only
# Black-box physical blocks that are already verified at the block-level.
#################################################################################

# Set this variable to black-box these sub-designs

set hdlin_interface_only "${DDC_HIER_DESIGNS} ${DC_ILM_HIER_DESIGNS} ${ICC_ILM_HIER_DESIGNS}"

#################################################################################
# Read in the libraries
#################################################################################

foreach tech_lib "${TARGET_LIBRARY_FILES} ${ADDITIONAL_LINK_LIB_FILES}" {
  read_db -technology_library $tech_lib
}

#################################################################################
# Read in the Reference Design as verilog/vhdl source code
#################################################################################

# Even for a top-level only verification, read in the RTL for the complete
# design.  Formality needs the interface info for the modules being black-boxed.

read_vhdl -r ${RTL_SOURCE_FILES} -work_library WORK

set_top r:/WORK/${DESIGN_NAME}

#################################################################################
# Read in the Implementation Design from DC-RM result
#
# Choose the format that is used in your flow
#################################################################################

# For Verilog
#read_verilog -i ./${RESULTS_DIR}/${DESIGN_NAME}.mapped.v

# OR

# For DDC
read_ddc -i ./${RESULTS_DIR}/${DESIGN_NAME}.mapped.ddc

# OR

# For Milkyway

# Note:
# Due to Milkyway schema changes in B-2008.09 for both Design Compiler
# and IC Compiler B-2008.09, Formality won't support reading the
# Milkyway design from the B-2008.09 release of Design Compiler until
# the B-2008.12 version of Formality 

# read_milkyway -i -libname ${mw_design_library} -cell_name ${DESIGN_NAME}_DCT ${mw_design_library}

set_top i:/WORK/${DESIGN_NAME}

#         OR for Milkyway
# set_top i:/${mw_design_library}/${DESIGN_NAME}

#################################################################################
# Configure constant ports
#
# When using the Synopsys Auto Setup mode, the SVF file will convey information
# automatically to Formality about how to disable scan.
#
# Otherwise, manually define those ports whose inputs should be assumed constant
# during verification.
#
# Example command format:
#
#   set_constant -type port i:/WORK/$DESIGN_NAME/<port_name> <constant_value> 
#
#################################################################################

match

report_unmatched_points > ${REPORTS_DIR}/${DESIGN_NAME}.fmv_unmatched_points.rpt

#################################################################################
# Verify and Report
#################################################################################

if { ![verify] }  {  
  save_session -replace ${REPORTS_DIR}/${DESIGN_NAME}
  report_failing_points > ${REPORTS_DIR}/${DESIGN_NAME}.fmv_failing_points.rpt
  report_aborted > ${REPORTS_DIR}/${DESIGN_NAME}.fmv_aborted_points.rpt
} 

exit

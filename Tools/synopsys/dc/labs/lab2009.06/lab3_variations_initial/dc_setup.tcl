source -echo -verbose common_setup.tcl

#################################################################################
# Design Compiler Top-Down Reference Methodology Setup
# Script: dc_setup.tcl
# Version: B-2008.09-SP1 (Nov. 10, 2008)
# Copyright (C) 2007, 2008 Synopsys All rights reserved.
#################################################################################


#################################################################################
# Setup Variables
#
# Modify settings in this section to customize your DC-RM run.
#################################################################################

# Portions of dc_setup.tcl may be used by other tools so do check for DC only commands
if {$synopsys_program_name == "dc_shell"}  {

  # Change alib_library_analysis_path to point to a central cache of analyzed libraries
  # to save some runtime and disk space.  The following setting only reflects the
  # the default value and should be changed to a central location for best results.

  set alib_library_analysis_path .

  # Add any additional DC variables needed here
}

set RTL_SOURCE_FILES  "ORCA_TYPES.vhd \
                        BLENDER.vhd \
                        RISCTYPES.vhd \
                        ALU.vhd \
                        CLOCK_GEN.vhd \
                        CONTEXT_MEM.vhd \
                        CONTROL.vhd \
                        DATA_PATH.vhd \
                        INSTRN_LAT.vhd \
                        ORCA.vhd \
                        ORCA_IO.vhd \
                        PCI_FIFO.vhd \
                        PCI_TOP.vhd \
                        REG_FILE.vhd \
                        RISC_CORE.vhd \
                        SDRAM_FIFO.vhd \
                        SDRAM_TOP.vhd \
                        PARSER.vhd \
                        PCI_CORE.vhd \
                        PCI_W_MUX.vhd \
                        PRGRM_CNT.vhd \
                        PRGRM_CNT_TOP.vhd \
                        PRGRM_DECODE.vhd \
                        PRGRM_FSM.vhd \
                        RESET_BLOCK.vhd \
                        RISC_CHIP.vhd \
                        SDRAM_IF.vhd \
                        SD_W_MUX.vhd \
                        STACK_FSM.vhd \
                        STACK_MEM.vhd \
                        STACK_TOP.vhd \
                        ORCA_TOP.vhd"      ;# Enter the list of source RTL files if reading from RTL

# The following variables are used by scripts in dc_scripts to direct the location
# of the output files

set REPORTS_DIR "reports"
set RESULTS_DIR "results"

file mkdir ${REPORTS_DIR}
file mkdir ${RESULTS_DIR}

#################################################################################
# Library Setup
#
# This section is designed to work with the settings from common_setup.tcl
# without any additional modification.
#################################################################################

# Define all the library variables shared by all the front-end tools

set search_path ". ${ADDITIONAL_SEARCH_PATH} $search_path"

# Milkyway variable settings

# Make sure to define the following Milkyway library variables
# mw_logic1_net, mw_logic0_net and mw_design_library are needed by write_milkyway

set mw_logic1_net ${MW_POWER_NET}
set mw_logic0_net ${MW_GROUND_NET}

set mw_reference_library ${MW_REFERENCE_LIB_DIRS}
set mw_design_library ${DESIGN_NAME}_LIB

set mw_site_name_mapping [list CORE unit Core unit core unit]

# The remainder of the setup below should only be performed in Design Compiler
if {$synopsys_program_name == "dc_shell"}  {

  # Include all libraries for multi-Vth leakage power optimization

  set target_library ${TARGET_LIBRARY_FILES}
  set synthetic_library dw_foundation.sldb
  set link_library "* $target_library $ADDITIONAL_LINK_LIB_FILES $synthetic_library"

  # Set min libraries if they exist
  foreach {max_library min_library} $MIN_LIBRARY_FILES {
    set_min_library $max_library -min_version $min_library
  }

  if {[shell_is_in_topographical_mode]} {

    # Only create new Milkyway design library if it doesn't already exist
    if {![file isdirectory $mw_design_library ]} {
      create_mw_lib   -technology $TECH_FILE \
                      -mw_reference_library $mw_reference_library \
                      $mw_design_library
    } else {
      # If Milkyway design library already exists, ensure that it is consistent with specified Milkyway reference libraries
      set_mw_lib_reference $mw_design_library -mw_reference_library $mw_reference_library
    }

    open_mw_lib     $mw_design_library

    check_library

    set_tlu_plus_files -max_tluplus $TLUPLUS_MAX_FILE \
                       -min_tluplus $TLUPLUS_MIN_FILE \
                       -tech2itf_map $MAP_FILE

    check_tlu_plus_files

  }

  #################################################################################
  # Library Modifications
  #
  # Apply library modifications here after the libraries are loaded.
  #################################################################################

  # source dont_use.tcl
} 

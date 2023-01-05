##########################################################################################
# Variables common to all RM scripts
# Script: common_setup.tcl
# Version: B-2008.09 (Oct. 3, 2008)
# Copyright (C) 2007, 2008 Synopsys All rights reserved.
##########################################################################################

set DESIGN_NAME                   "ORCA_TOP"  ;#  The name of the top-level design

set DESIGN_REF_DATA_PATH     "../ref"  ;#  Absolute path prefix variable for library/design data.
                                        #  Use this variable to prefix the common absolute path to 
                                        #  the common variables defined below.
                                        #  Absolute paths are mandatory for hierarchical RM flow.

##########################################################################################
# Library Setup Variables
##########################################################################################

# For the following variables, use a blank space to separate multiple entries
# Example: set TARGET_LIBRARY_FILES "lib1.db lib2.db lib3.db"

set ADDITIONAL_SEARCH_PATH        "./results \
                                   ${DESIGN_REF_DATA_PATH}/design_data \
                                   ${DESIGN_REF_DATA_PATH}/design_data/rtl \
                                   ${DESIGN_REF_DATA_PATH}/libs/mw_lib/sc/LM \
                                   ${DESIGN_REF_DATA_PATH}/libs/mw_lib/io/LM \
                                   ${DESIGN_REF_DATA_PATH}/libs/mw_lib/ram4x32/LM \
                                   ${DESIGN_REF_DATA_PATH}/libs/mw_lib/ram8x64/LM \
                                   ${DESIGN_REF_DATA_PATH}/libs/mw_lib/ram32x64/LM \
                                   ${DESIGN_REF_DATA_PATH}/libs/mw_lib/ram16x128/LM" ; #  Additional search path to be added to the default search path

set TARGET_LIBRARY_FILES          "sc_max.db"  ;#  Target technology logical libraries

set ADDITIONAL_LINK_LIB_FILES     "io_max.db \
                                   ram4x32_max.db \
                                   ram8x64_max.db \
                                   ram32x64_max.db \
                                   ram16x128_max.db" ;#  Extra link logical libraries not included in TARGET_LIBRARY_FILES

set MIN_LIBRARY_FILES             "sc_max.db sc_min.db \
                                   io_max.db io_min.db \
                                   ram4x32_max.db ram4x32_min.db \
                                   ram8x64_max.db ram8x64_min.db \
                                   ram32x64_max.db ram32x64_min.db \
                                   ram16x128_max.db ram16x128_min.db" ;#  List of max min library pairs "max1 min1 max2 min2 max3 min3"...

set MW_REFERENCE_LIB_DIRS         "${DESIGN_REF_DATA_PATH}/libs/mw_lib/sc \
                                   ${DESIGN_REF_DATA_PATH}/libs/mw_lib/io \
                                   ${DESIGN_REF_DATA_PATH}/libs/mw_lib/ram4x32 \
                                   ${DESIGN_REF_DATA_PATH}/libs/mw_lib/ram8x64 \
                                   ${DESIGN_REF_DATA_PATH}/libs/mw_lib/ram32x64 \
                                   ${DESIGN_REF_DATA_PATH}/libs/mw_lib/ram16x128"  ;#  Milkyway reference libraries

set MW_REFERENCE_CONTROL_FILE     ""  ;#  Reference Control file to define the MW ref libs

set TECH_FILE                     "${DESIGN_REF_DATA_PATH}/libs/tech/cb13_6m.tf"  ;#  Milkyway technology file


set MAP_FILE                      "${DESIGN_REF_DATA_PATH}/libs/tlup/cb13_6m.map"  ;#  Mapping file for TLUplus

set TLUPLUS_MAX_FILE              "${DESIGN_REF_DATA_PATH}/libs/tlup/cb13_6m_max.tluplus"  ;#  Max TLUplus file

set TLUPLUS_MIN_FILE              "${DESIGN_REF_DATA_PATH}/libs/tlup/cb13_6m_min.tluplus"  ;#  Min TLUplus file

set MW_POWER_NET                  "VDD" ;#
set MW_POWER_PORT                 "VDD" ;#
set MW_GROUND_NET                 "VSS" ;#
set MW_GROUND_PORT                "VSS" ;#

set MIN_ROUTING_LAYER             ""   ;# Min routing layer
set MAX_ROUTING_LAYER             ""   ;# Max routing layer


##########################################################################################
# Multi-Voltage Common Variables
#
# Define the following MV common variables for the RM scripts for multi-voltage flows.
# Use as few or as many of the following definitions as needed by your design.
##########################################################################################

set PD1                          ""           ;# Name of power domain/voltage area  1
set PD1_CELLS                    ""           ;# Instances to include in power domain/voltage area 1
set VA1_COORDINATES              {}           ;# Coordinates for voltage area 1
set MW_POWER_NET1                "VDD1"       ;# Power net for voltage area 1
set MW_POWER_PORT1               "VDD"        ;# Power port for voltage area 1

set PD2                          ""           ;# Name of power domain/voltage area  2
set PD2_CELLS                    ""           ;# Instances to include in power domain/voltage area 2
set VA2_COORDINATES              {}           ;# Coordinates for voltage area 2
set MW_POWER_NET2                "VDD2"       ;# Power net for voltage area 2
set MW_POWER_PORT2               "VDD"        ;# Power port for voltage area 2

set PD3                          ""           ;# Name of power domain/voltage area  3
set PD3_CELLS                    ""           ;# Instances to include in power domain/voltage area 3
set VA3_COORDINATES              {}           ;# Coordinates for voltage area 3
set MW_POWER_NET3                "VDD3"       ;# Power net for voltage area 3
set MW_POWER_PORT3               "VDD"        ;# Power port for voltage area 3

set PD4                          ""           ;# Name of power domain/voltage area  4
set PD4_CELLS                    ""           ;# Instances to include in power domain/voltage area 4
set VA4_COORDINATES              {}           ;# Coordinates for voltage area 4
set MW_POWER_NET4                "VDD4"       ;# Power net for voltage area 4
set MW_POWER_PORT4               "VDD"        ;# Power port for voltage area 4

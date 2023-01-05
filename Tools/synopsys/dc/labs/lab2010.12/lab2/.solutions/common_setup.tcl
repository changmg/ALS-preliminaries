##########################################################################################
# User-defined variables for logical library setup in dc_setup.tcl
##########################################################################################

set ADDITIONAL_SEARCH_PATH        "../ref/libs/mw_lib/sc/LM ./rtl ./scripts" ;# Directories containing logical libraries,
                                                                              # logical design and script files.

set TARGET_LIBRARY_FILES          sc_max.db                   ;#  Logical technology library file

set SYMBOL_LIBRARY_FILES          sc.sdb                      ;#  Symbol library file

##########################################################################################
# User-defined variables for physical library setup in dc_setup.tcl
##########################################################################################

set MW_DESIGN_LIB                 TOP_LIB                               ;# User-defined Milkyway design library name

set MW_REFERENCE_LIB_DIRS         ../ref/libs/mw_lib/sc                 ;# Milkyway reference libraries

set TECH_FILE                     ../ref/libs/tech/cb13_6m.tf           ;#  Milkyway technology file

set TLUPLUS_MAX_FILE              ../ref/libs/tlup/cb13_6m_max.tluplus  ;#  Max TLUPlus file

set MAP_FILE                      ../ref/libs/tlup/cb13_6m.map          ;#  Mapping file for TLUplus

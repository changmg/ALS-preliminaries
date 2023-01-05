######################################################################
# Logical Library Settings
######################################################################
set_app_var search_path "$search_path $ADDITIONAL_SEARCH_PATH"
set_app_var target_library $TARGET_LIBRARY_FILES
set_app_var link_library "* $target_library"
set_app_var symbol_library $SYMBOL_LIBRARY_FILES

######################################################################
# Physical Library Settings
######################################################################

set_app_var mw_reference_library $MW_REFERENCE_LIB_DIRS
set_app_var mw_design_library $MW_DESIGN_LIB

create_mw_lib   -technology $TECH_FILE \
                -mw_reference_library $mw_reference_library \
                $mw_design_library
open_mw_lib     $mw_design_library
set_tlu_plus_files -max_tluplus $TLUPLUS_MAX_FILE \
                   -tech2itf_map $MAP_FILE

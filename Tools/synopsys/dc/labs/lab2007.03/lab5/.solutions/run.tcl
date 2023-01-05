read_ddc unmapped/TOP.ddc
current_design TOP
link

reset_design

group -design NEW -cell I_NEW [get_cells "I_COUNT I_DECODE"]
ungroup -start_level 2 I_NEW

source scripts/TOP.con

compile

write -h -f ddc -o mapped/new_TOP.ddc

#exit


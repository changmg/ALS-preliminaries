read_ddc EXCEPTIONS.ddc
current_design EXCEPTIONS
link

report_constraint -all
report_timing

# Task 2, Step 2
create_clock -name vclk -period 6
set in_ports [get_ports "coeff* adr_i*"]
set_input_delay 0 -clock vclk -add_delay $in_ports
set_output_delay 0 -clock vclk -add_delay [all_outputs]

report_timing -group vclk


# Task 2, Step 3
set_clock_group -name false_grp1 -logically_exclusive \
	-group clk -group vclk

# Altenatively:
# set_false_path -from [get_clocks clk] -to [get_clocks vclk]
# set_false_path -from [get_clocks vclk] -to [get_clocks clk]

report_timing -group vclk
report_timing -group clk


# Task 2, Step 6
set_false_path -from [get_clocks clk] \
	-through $in_ports \
	-through [all_outputs] -to [get_clocks clk]

report_timing -from $in_ports -to [all_outputs]


report_timing -group clk


# Task 3, Step 2
set_multicycle_path 2 -setup -to mul_result_reg*/D

report_timing -to mul_result_reg*/D
report_timing -to mul_result_reg*/D -delay min

# Task 3, Step 5
set_multicycle_path 1 -hold -to mul_result_reg*/D

report_timing -to mul_result_reg*/D -delay min

report_constraint -all

 set CLK_SKEW 0.05
 set_clock_uncertainty $CLK_SKEW $clkname

 set DFF_CKQ 0.638
 set IP_DELAY [expr 0.02 + $DFF_CKQ]
 set_input_delay $IP_DELAY -clock $clkname [remove_from_collection [all_inputs] $clkname]

 set DFF_SETUP 0.546
 set OP_DELAY [expr 0.02 + $DFF_SETUP]
 set_output_delay $OP_DELAY -clock $clkname [all_outputs]

 set DR_CELL_NAME DFFR_X1
 set DR_CELL_PIN  Q
 set_driving_cell -lib_cell "$DR_CELL_NAME" -pin "$DR_CELL_PIN" [remove_from_collection [all_inputs] $clkname]

 set PORT_LOAD_CELL  NangateOpenCellLibrary_PDKv1_2_v2008_10_slow_nldm/DFFR_X1/D
 set WIRE_LOAD_EST   0.013
 set FANOUT          4
 set PORT_LOAD [expr $WIRE_LOAD_EST + $FANOUT * [load_of $PORT_LOAD_CELL]]
 set_load $PORT_LOAD [all_outputs]
 set report_default_significant_digits 4

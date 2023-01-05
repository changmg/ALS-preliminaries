perl ./PAD_Flow.pl -op setup
cp modelsim.ini ./SIMULATION/run_f
cp modelsim.ini ./SIMULATION/run_s
cp Library_fwd.saif ./SIMULATION/run_f
cp designenv.tcl ./SYNTH/run_f
cp counter.v ./HDL/run_s
cp test.v ./SIMULATION/run_s
cp test.v ./SIMULATION/run_f
cp test_switching.v ./SIMULATION/run_f
cp .synopsys_dc.setup ./SYNTH/run_s
cp setup.tcl ./SYNTH/run_s
cp read.tcl ./SYNTH/run_s
cp Constraints.tcl ./SYNTH/run_s
cp CompileAnalyze.tcl ./SYNTH/run_s
cp synth.tcl ./SYNTH/run_s
cd ./SYNTH/run_s
sed -i 's@set RTL_DIR    ./@set RTL_DIR    ../../HDL/run_s@g' setup.tcl
add synopsys2015
dc_shell -f synth.tcl
cp counter_final.v ../run_f
cd ../..
add modelsim10.3b
add synopsys2015
add cadence2010
perl ./PAD_Flow.pl -op analyze -mod counter -clkname clock -period 10 -net SYNTH/run_f/counter_final.v
cd ./SIMULATION/run_f/
add modelsim10.3b
add synopsys2015
add cadence2010
setenv MODELSIM modelsim.ini
vlib mti_lib
vlog ../../PR/run_f/counter_routed.v 
vlog /afs/eos.ncsu.edu/lockers/research/ece/wdavis/tech/nangate/NangateOpenCellLibrary_PDKv1_2_v2008_10/liberty/520/NangateOpenCellLibrary_PDKv1_2_v2008_10_typical_conditional.v
vlog ./test.v 
vsim -novopt -c test_fixture -do "run -all"
vcd2saif -input count.vcd -instance test_fixture/DUT -output count.saif
cd ../..
add modelsim10.3b
add synopsys2015
add cadence2010
perl ./PAD_Flow.pl -mod counter -clkname clock -period 10 -op power -saif SIMULATION/run_f/count.saif -inst test_fixture/DUT

# Synopsys Demo

- Behavior-level Verilog代码在sign_mult_8x8/28nm/beh中

- 运行逻辑综合和映射的脚本

  ```shell
  dc_shell -f scripts/dc_synth_comb.tcl
  ```

- 在sign_mult_8x8/28nm/gate中，生成gate-netlist
- 在sign_mult_8x8/28nm/report中，生成面积延时的报告

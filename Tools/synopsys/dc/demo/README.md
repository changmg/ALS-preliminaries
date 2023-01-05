# Design Compiler Demo

- Design文件：design/sign_mult_8x8.v（行为级Verilog）
- Synopsys配置文件：.synopsys_dc.setup

```shell
################################
## Library Setting
#########################################

set search_path "$search_path ./std_cells"
set synthetic_library "dw_foundation.sldb"
set target_library "tcbn28hpcplusbwp7t30p140hvtssg0p72v0c.db"
set link_library "* $synthetic_library $target_library"

################################
## Alias and other configurations
#########################################
set hdlin_enable_vpp true
set hdlin_translate_off_skip_text true
alias cud current_design
alias h history
suppress_message ELAB-909
suppress_message VER-318
suppress_message ELAB-311
suppress_message ELAB-349
suppress_message ELAB-910
suppress_message VER-61
suppress_message ELAB-314
history keep 100
set sh_enable_line_editing true
```

工艺库：std_cells/tcbn28hpcplusbwp7t30p140hvtssg0p72v0c.db

Designware库（包含算术单元等）：dw_foundation.sldb

- 包含DC命令的脚本：synth.tcl

```shell
# read design
read_verilog ./design/sign_mult_8x8.v

# delay constraint
set_max_delay 5.00 -from [all_inputs] -to [all_outputs]

# synthesize and map
compile_ultra

# report
report_area  > ./sign_mult_8x8.rpt
report_timing >> ./sign_mult_8x8.rpt
report_power >> ./sign_mult_8x8.rpt

# output design
write -format verilog -hierarchy -output ./design/sign_mult_8x8_gate_netlist.v
```

- 运行脚本（在.synopsys_dc.setup所在目录运行）

  ```shell
  dc_shell -f synth.tcl
  ```

- 运行结果：

  - 生成的report文件：sign_mult_8x8.rpt
  - 生成的网表文件：design/sign_mult_8x8_gate_netlist.v

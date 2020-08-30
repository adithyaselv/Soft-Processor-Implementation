
define_attribute {clk} syn_maxfan {1000000}
define_attribute {n:default_clock_driver.xlclockdriver_20.ce_vec*} syn_keep {true}
define_attribute {n:default_clock_driver.xlclockdriver_20.ce_vec*} max_fanout {"REDUCE"}
define_attribute {n:default_clock_driver.xlclockdriver_2.ce_vec*} syn_keep {true}
define_attribute {n:default_clock_driver.xlclockdriver_2.ce_vec*} max_fanout {"REDUCE"}
define_attribute {n:default_clock_driver.xlclockdriver_50000000.ce_vec*} syn_keep {true}
define_attribute {n:default_clock_driver.xlclockdriver_50000000.ce_vec*} max_fanout {"REDUCE"}
define_attribute {n:default_clock_driver.xlclockdriver_8.ce_vec*} syn_keep {true}
define_attribute {n:default_clock_driver.xlclockdriver_8.ce_vec*} max_fanout {"REDUCE"}

define_scope_collection ce_20_0ebed376_group \
  {find -seq * -in [ expand -hier -from {n:ce_20_sg_x2} ]}
define_scope_collection ce_2_0ebed376_group \
  {find -seq * -in [ expand -hier -from {n:ce_2_sg_x1} ]}
define_scope_collection ce_50000000_0ebed376_group \
  {find -seq * -in [ expand -hier -from {n:ce_50000000_sg_x2} ]}
define_scope_collection ce_8_0ebed376_group \
  {find -seq * -in [ expand -hier -from {n:ce_8_sg_x2} ]}

define_multicycle_path -from {$ce_20_0ebed376_group} \
  -to {$ce_20_0ebed376_group} 20
define_multicycle_path -from {$ce_2_0ebed376_group} \
  -to {$ce_2_0ebed376_group} 2
define_multicycle_path -from {$ce_50000000_0ebed376_group} \
  -to {$ce_50000000_0ebed376_group} 100
define_multicycle_path -from {$ce_8_0ebed376_group} \
  -to {$ce_8_0ebed376_group} 8

# Group-to-group constraints
define_multicycle_path -from {$ce_20_0ebed376_group} \
  -to {$ce_2_0ebed376_group} 2
define_multicycle_path -from {$ce_20_0ebed376_group} \
  -to {$ce_50000000_0ebed376_group} 20
define_multicycle_path -from {$ce_20_0ebed376_group} \
  -to {$ce_8_0ebed376_group} 8
define_multicycle_path -from {$ce_2_0ebed376_group} \
  -to {$ce_20_0ebed376_group} 2
define_multicycle_path -from {$ce_2_0ebed376_group} \
  -to {$ce_50000000_0ebed376_group} 2
define_multicycle_path -from {$ce_2_0ebed376_group} \
  -to {$ce_8_0ebed376_group} 2
define_multicycle_path -from {$ce_50000000_0ebed376_group} \
  -to {$ce_20_0ebed376_group} 20
define_multicycle_path -from {$ce_50000000_0ebed376_group} \
  -to {$ce_2_0ebed376_group} 2
define_multicycle_path -from {$ce_50000000_0ebed376_group} \
  -to {$ce_8_0ebed376_group} 8
define_multicycle_path -from {$ce_8_0ebed376_group} \
  -to {$ce_20_0ebed376_group} 8
define_multicycle_path -from {$ce_8_0ebed376_group} \
  -to {$ce_2_0ebed376_group} 2
define_multicycle_path -from {$ce_8_0ebed376_group} \
  -to {$ce_50000000_0ebed376_group} 8

# LOC constraints
define_attribute   {blue[1]} xc_loc {U4}
define_attribute   {blue[0]} xc_loc {U5}
define_attribute   {clk} xc_loc {B8}
define_attribute   {g18} xc_loc {G18}
define_attribute   {gateway_out} xc_loc {J14}
define_attribute   {green[2]} xc_loc {P6}
define_attribute   {green[1]} xc_loc {P8}
define_attribute   {green[0]} xc_loc {N8}
define_attribute   {hs} xc_loc {T4}
define_attribute   {p11} xc_loc {P11}
define_attribute   {r12} xc_loc {R12}
define_attribute   {r17} xc_loc {R17}
define_attribute   {red[2]} xc_loc {R8}
define_attribute   {red[1]} xc_loc {T8}
define_attribute   {red[0]} xc_loc {R9}
define_attribute   {vs} xc_loc {U3}



# Global period constraint
create_clock -name clk -period 20.0 [get_ports clk]

# ce_20_0ebed376_group and inner group constraint
set_property DONT_TOUCH true [get_nets ce_20_sg_x2]
set enCellsFrom [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_20_sg_x2]]]
set enCellsTo [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_20_sg_x2]]]
set_multicycle_path -from $enCellsFrom -to $enCellsTo -setup 20
set_multicycle_path -from $enCellsFrom -to $enCellsTo -hold 19


# ce_2_0ebed376_group and inner group constraint
set_property DONT_TOUCH true [get_nets ce_2_sg_x1]
set enCellsFrom [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_2_sg_x1]]]
set enCellsTo [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_2_sg_x1]]]
set_multicycle_path -from $enCellsFrom -to $enCellsTo -setup 2
set_multicycle_path -from $enCellsFrom -to $enCellsTo -hold 1


# ce_50000000_0ebed376_group and inner group constraint
set_property DONT_TOUCH true [get_nets ce_50000000_sg_x2]
set enCellsFrom [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_50000000_sg_x2]]]
set enCellsTo [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_50000000_sg_x2]]]
set_multicycle_path -from $enCellsFrom -to $enCellsTo -setup 50000000
set_multicycle_path -from $enCellsFrom -to $enCellsTo -hold 49999999


# ce_8_0ebed376_group and inner group constraint
set_property DONT_TOUCH true [get_nets ce_8_sg_x2]
set enCellsFrom [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_8_sg_x2]]]
set enCellsTo [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_8_sg_x2]]]
set_multicycle_path -from $enCellsFrom -to $enCellsTo -setup 8
set_multicycle_path -from $enCellsFrom -to $enCellsTo -hold 7


# Group-to-group constraints
set enCellsFrom [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_20_sg_x2]]]
set enCellsTo [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_2_sg_x1]]]
set_multicycle_path -from $enCellsFrom -to $enCellsTo -setup 2
set_multicycle_path -from $enCellsFrom -to $enCellsTo -hold 1

set enCellsFrom [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_20_sg_x2]]]
set enCellsTo [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_50000000_sg_x2]]]
set_multicycle_path -from $enCellsFrom -to $enCellsTo -setup 20
set_multicycle_path -from $enCellsFrom -to $enCellsTo -hold 19

set enCellsFrom [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_20_sg_x2]]]
set enCellsTo [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_8_sg_x2]]]
set_multicycle_path -from $enCellsFrom -to $enCellsTo -setup 4
set_multicycle_path -from $enCellsFrom -to $enCellsTo -hold 3

set enCellsFrom [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_2_sg_x1]]]
set enCellsTo [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_20_sg_x2]]]
set_multicycle_path -from $enCellsFrom -to $enCellsTo -setup 2
set_multicycle_path -from $enCellsFrom -to $enCellsTo -hold 1

set enCellsFrom [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_2_sg_x1]]]
set enCellsTo [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_50000000_sg_x2]]]
set_multicycle_path -from $enCellsFrom -to $enCellsTo -setup 2
set_multicycle_path -from $enCellsFrom -to $enCellsTo -hold 1

set enCellsFrom [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_2_sg_x1]]]
set enCellsTo [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_8_sg_x2]]]
set_multicycle_path -from $enCellsFrom -to $enCellsTo -setup 2
set_multicycle_path -from $enCellsFrom -to $enCellsTo -hold 1

set enCellsFrom [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_50000000_sg_x2]]]
set enCellsTo [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_20_sg_x2]]]
set_multicycle_path -from $enCellsFrom -to $enCellsTo -setup 20
set_multicycle_path -from $enCellsFrom -to $enCellsTo -hold 19

set enCellsFrom [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_50000000_sg_x2]]]
set enCellsTo [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_2_sg_x1]]]
set_multicycle_path -from $enCellsFrom -to $enCellsTo -setup 2
set_multicycle_path -from $enCellsFrom -to $enCellsTo -hold 1

set enCellsFrom [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_50000000_sg_x2]]]
set enCellsTo [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_8_sg_x2]]]
set_multicycle_path -from $enCellsFrom -to $enCellsTo -setup 8
set_multicycle_path -from $enCellsFrom -to $enCellsTo -hold 7

set enCellsFrom [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_8_sg_x2]]]
set enCellsTo [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_20_sg_x2]]]
set_multicycle_path -from $enCellsFrom -to $enCellsTo -setup 4
set_multicycle_path -from $enCellsFrom -to $enCellsTo -hold 3

set enCellsFrom [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_8_sg_x2]]]
set enCellsTo [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_2_sg_x1]]]
set_multicycle_path -from $enCellsFrom -to $enCellsTo -setup 2
set_multicycle_path -from $enCellsFrom -to $enCellsTo -hold 1

set enCellsFrom [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_8_sg_x2]]]
set enCellsTo [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_50000000_sg_x2]]]
set_multicycle_path -from $enCellsFrom -to $enCellsTo -setup 8
set_multicycle_path -from $enCellsFrom -to $enCellsTo -hold 7

# LOC constraints
set_property LOC U4 [get_ports {blue[1]}]
set_property LOC U5 [get_ports {blue[0]}]
set_property LOC B8 [get_ports clk]
set_property LOC G18 [get_ports g18]
set_property LOC J14 [get_ports gateway_out]
set_property LOC P6 [get_ports {green[2]}]
set_property LOC P8 [get_ports {green[1]}]
set_property LOC N8 [get_ports {green[0]}]
set_property LOC T4 [get_ports hs]
set_property LOC P11 [get_ports p11]
set_property LOC R12 [get_ports r12]
set_property LOC R17 [get_ports r17]
set_property LOC R8 [get_ports {red[2]}]
set_property LOC T8 [get_ports {red[1]}]
set_property LOC R9 [get_ports {red[0]}]
set_property LOC U3 [get_ports vs]

# Clock signal (you may have other constraints related to clock if needed)
set_property PACKAGE_PIN W5 [get_ports {clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk}]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk}]

# Input toggle switches
set_property PACKAGE_PIN J15 [get_ports {num[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {num[0]}]

set_property PACKAGE_PIN L16 [get_ports {num[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {num[1]}]

set_property PACKAGE_PIN M13 [get_ports {num[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {num[2]}]

set_property PACKAGE_PIN R15 [get_ports {num[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {num[3]}]

set_property PACKAGE_PIN N17 [get_ports {en}]
set_property IOSTANDARD LVCMOS33 [get_ports {en}]

set_property PACKAGE_PIN N18 [get_ports {digit_sel[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {digit_sel[0]}]

set_property PACKAGE_PIN P18 [get_ports {digit_sel[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {digit_sel[1]}]

# Output segments
set_property PACKAGE_PIN T10 [get_ports {segments[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {segments[0]}]

set_property PACKAGE_PIN R10 [get_ports {segments[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {segments[1]}]

set_property PACKAGE_PIN K16 [get_ports {segments[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {segments[2]}]

set_property PACKAGE_PIN K13 [get_ports {segments[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {segments[3]}]

set_property PACKAGE_PIN P15 [get_ports {segments[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {segments[4]}]

set_property PACKAGE_PIN T11 [get_ports {segments[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {segments[5]}]

set_property PACKAGE_PIN L18 [get_ports {segments[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {segments[6]}]

# Output anode_active
set_property PACKAGE_PIN F17 [get_ports {anode_active[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {anode_active[0]}]

set_property PACKAGE_PIN F18 [get_ports {anode_active[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {anode_active[1]}]

set_property PACKAGE_PIN G17 [get_ports {anode_active[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {anode_active[2]}]

set_property PACKAGE_PIN G18 [get_ports {anode_active[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {anode_active[3]}]

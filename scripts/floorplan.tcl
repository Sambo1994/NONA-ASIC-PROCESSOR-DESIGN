read_lef tech/sky130.lef
read_def design.def
initialize_floorplan -die_area 0 0 100 100
place_design
write_def results/placement.def

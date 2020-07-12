; {material_print_temperature} {material_bed_temperature}

M201 X500.00 Y500.00 Z100.00 E5000.00 ;Setup machine max acceleration
M203 X500.00 Y500.00 Z10.00 E50.00 ;Setup machine max feedrate
M204 P500.00 R1000.00 T500.00 ;Setup Print/Retract/Travel acceleration
M205 X8.00 Y8.00 Z0.40 E5.00 ;Setup Jerk
M220 S100 ;Reset Feedrate
M221 S100 ;Reset Flowrate

M104 S140 ; Pre-heat nozzle to 140 without waiting, avoid oozing
M140 S{material_bed_temperature_layer_0} ; Set heatbed temp without waiting

G28 ; Home all
G29 ; Mesh bed levelling

M420 S1 ; Enable bed levelling .... not sure it's required :p


g1 f5000 x10 y10 z5 ; Move the nozzle back close to the origin to keep the oozing near the prime line

M109 S{material_print_temperature_layer_0} ; Wait for nozzle to reach target temp
M190 S{material_bed_temperature_layer_0} ; Wait for heatbed to reach target temp

G92 E0 ;Reset Extruder
G1 Z2.0 F3000 ;Move Z Axis up
G1 X10.1 Y20 Z0.28 F5000.0 ;Move to start position
G1 X10.1 Y200.0 Z0.28 F1500.0 E15 ;Draw the first line
G1 X10.4 Y200.0 Z0.28 F5000.0 ;Move to side a little
G1 X10.4 Y20 Z0.28 F1500.0 E30 ;Draw the second line
G92 E0 ;Reset Extruder
G1 Z2.0 F3000 ;Move Z Axis up

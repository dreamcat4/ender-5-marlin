M220 S100 ;Reset Feedrate
M221 S100 ;Reset Flowrate
G90 ; use absolute coordinates
M83 ; extruder relative mode

M104 S140 ; Set nozzle temp to 140
M140 S[first_layer_bed_temperature]; Set heatbed temp
M109 S140 ; Wait for nozzle to reach 140

G28 ; home all
G29 ; ABL
M420 S1 ; Enable ABL

G1 X10 Y10 Z5 F5000 ; Move close to origin

M109 S[first_layer_temperature]
M190 S[first_layer_bed_temperature] ; wait for bed temp

G1 Z2 F240
G1 X2 Y10 F3000
G1 Z0.28 F240
G92 E0.0
G1 Y190 E15.0 F1500.0 ; intro line
G1 X2.3 F5000
G1 Y10 E30 F1200.0 ; intro line
G92 E0.0

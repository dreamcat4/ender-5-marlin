;; Experimental ! 

G90 ; use absolute coordinates
M83 ; extruder relative mode

M220 S100 ;Reset Feedrate
M221 S100 ;Reset Flowrate

M104 S140 ; Pre-heat nozzle to 140 without waiting, avoid oozing
M140 S[first_layer_bed_temperature] ; Set heatbed temp without waiting

G28 ; home all
G29 ; Mesh bed levelling
M420 S1 ; Enable bed levelling .... not sure it's required :p

G1 X5 Y5 Z5  ; Move the nozzle back close to the origin to keep the oozing near the prime line

M109 S[first_layer_temperature] ; Wait for nozzle to reach target temp
M190 S[first_layer_bed_temperature] ; Wait for heatbed to reach target temp

G1 Z2 F240
G1 X2 Y10 F3000
G1 Z0.28 F240
G92 E0.0
G1 Y190 E15.0 F1500.0 ; intro line
G1 X2.3 F5000
G1 Y10 E30 F1200.0 ; intro line
G92 E0.0
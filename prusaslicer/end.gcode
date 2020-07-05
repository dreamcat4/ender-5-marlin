;; Experimental ! 

M104 S0 ; turn off temperature
M140 S0 ; turn off heatbed
M107 ; turn off fan
{if layer_z < max_print_height}G1 Z{z_offset+min(layer_z+10, max_print_height)} F600{endif} ; Move print head up
G1 X0 Y200 F3000 ; present print
M84 X Y E ; disable motors
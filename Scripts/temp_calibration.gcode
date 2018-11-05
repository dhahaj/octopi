M117 Calib. PINDA Temp...
G4 S1;
G0 Z50 ; raise Z to not heat PINDA before bed is warm
M104 S215 ; set extruder temp
M140 S60 ; set bed temp
M190 S60 ; wait for bed temp
M109 S215 ; wait for extruder temp
G0 X50 Y50 Z0.15 ; this is a good PINDA heating position
M860 S35 ; the new code - wait until PINDA is >= 35C
G28 W ; home all without mesh bed level
G80 ; mesh bed leveling

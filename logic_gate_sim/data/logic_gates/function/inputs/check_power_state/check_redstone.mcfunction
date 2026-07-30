# Since redstone can have several power levels, This converts that to either 1 or 0

execute if block ~ ~ ~ redstone_wire[power=15] run return run tag @s add state1
execute if block ~ ~ ~ redstone_wire[power=14] run return run tag @s add state1
execute if block ~ ~ ~ redstone_wire[power=13] run return run tag @s add state1
execute if block ~ ~ ~ redstone_wire[power=12] run return run tag @s add state1
execute if block ~ ~ ~ redstone_wire[power=11] run return run tag @s add state1
execute if block ~ ~ ~ redstone_wire[power=10] run return run tag @s add state1
execute if block ~ ~ ~ redstone_wire[power=9] run return run tag @s add state1
execute if block ~ ~ ~ redstone_wire[power=8] run return run tag @s add state1
execute if block ~ ~ ~ redstone_wire[power=7] run return run tag @s add state1
execute if block ~ ~ ~ redstone_wire[power=6] run return run tag @s add state1
execute if block ~ ~ ~ redstone_wire[power=5] run return run tag @s add state1
execute if block ~ ~ ~ redstone_wire[power=4] run return run tag @s add state1
execute if block ~ ~ ~ redstone_wire[power=3] run return run tag @s add state1
execute if block ~ ~ ~ redstone_wire[power=2] run return run tag @s add state1
execute if block ~ ~ ~ redstone_wire[power=1] run return run tag @s add state1

execute if block ~ ~ ~ redstone_wire[power=0] run tag @s add state0

execute as @a run function logic_gates:give_gates

function logic_gates:debug_kill

advancement revoke @a only logic_gates:block_placed

scoreboard objectives add debug dummy

scoreboard players set tracer_dist debug 0
scoreboard players set timer debug 0
scoreboard players set show_wire debug 0
scoreboard players set show_input debug 0
scoreboard players set show_tick_output debug 0
scoreboard players set show_debug_scoreboard debug 0

scoreboard objectives setdisplay sidebar

execute as @e[tag=input,nbt={Invisible:true},distance=0..,type=armor_stand] run data modify entity @s Invisible set value true

tellraw @a {text:"yippee! The datapack loaded!!", color:"aqua"}
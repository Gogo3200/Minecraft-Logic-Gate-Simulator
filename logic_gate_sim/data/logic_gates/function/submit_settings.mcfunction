# enacts the data from the debug menu
#show_wire()
#show_input()
#show_tick_output()
#show_debug_scoreboard()


$scoreboard players set show_wire debug $(show_wire)

$scoreboard players set show_input debug $(show_input)

execute if score show_input debug matches 1 as @e[tag=input,nbt={Invisible:true},distance=0..,type=armor_stand] run data modify entity @s Invisible set value false
execute unless score show_input debug matches 1 as @e[tag=input,nbt={Invisible:false},distance=0..,type=armor_stand] run data modify entity @s Invisible set value true

$scoreboard players set show_tick_output debug $(show_tick_output)

$scoreboard players set show_debug_scoreboard debug $(show_debug_scoreboard)

execute if score show_debug_scoreboard debug matches 1 run scoreboard objectives setdisplay sidebar debug
execute unless score show_debug_scoreboard debug matches 1 run scoreboard objectives setdisplay sidebar
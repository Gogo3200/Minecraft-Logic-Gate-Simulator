# Runs runner_main as all runners. Continues every tick until there are no runners left.
# Also adds a timer

execute as @e[tag=runner,distance=0..,type=armor_stand] at @s run function logic_gates:wire/runner/runner_main

#Shows how many ticks it took to run.
execute unless entity @n[tag=runner,distance=0..,type=armor_stand] if score show_tick_output debug matches 1 unless score timer debug matches 0..1 run tellraw @a {text:"Process ran in ",color:green,extra:[{score:{objective:debug,name:timer},color:"gold"},{text:" ticks!",color:"green"}]}
#makes "ticks" singular if the score is 1. I just had to.
execute unless entity @n[tag=runner,distance=0..,type=armor_stand] if score show_tick_output debug matches 1 if score timer debug matches 1 run tellraw @a {text:"Process ran in ",color:green,extra:[{text:"1",color:"gold"},{text:" tick!",color:"green"}]}

#if there are no runners left, terminate loop (and reset timer).
execute unless entity @n[tag=runner,distance=0..,type=armor_stand] run return run scoreboard players set timer debug 0

scoreboard players add timer debug 1
schedule function logic_gates:wire/runner/runner_init 1t


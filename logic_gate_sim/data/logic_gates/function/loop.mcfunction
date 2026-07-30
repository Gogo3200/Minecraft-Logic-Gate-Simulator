#loop.


execute at @p as @e[tag=input,distance=..100,type=armor_stand] at @s run function logic_gates:inputs/check_power_state/check_power_main

#edge case if the wire loop terminates before all runners are gone. I didn't want to have this run every tick.
execute if score timer debug matches 0 if entity @n[tag=runner,distance=0..,type=armor_stand] run function logic_gates:wire/runner/runner_init
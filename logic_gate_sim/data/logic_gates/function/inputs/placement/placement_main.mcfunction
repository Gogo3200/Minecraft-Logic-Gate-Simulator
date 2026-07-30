# pretty much summons a tracer armor stand and begins the loop.

advancement revoke @s only logic_gates:block_placed

scoreboard players set tracer_dist debug 0

execute store result storage logic_gates:rot roty int 1 run data get entity @s Rotation[0]
execute store result storage logic_gates:rot rotx int 1 run data get entity @s Rotation[1]

function logic_gates:inputs/placement/summon_tracer with storage logic_gates:rot

function logic_gates:inputs/placement/tracer_loop_init
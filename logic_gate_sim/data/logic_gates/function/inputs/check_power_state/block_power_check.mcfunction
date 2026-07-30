# Checks if a block is powered or not and summons a runner with the appropriate tags to bordering wires.
# block() - block that has a powered feature

$execute if block ~ ~ ~ $(block)[powered=true] unless entity @s[tag=prev_on] run tag @s add state1
$execute if block ~ ~ ~ $(block)[powered=false] unless entity @s[tag=prev_off] run tag @s add state0

execute unless entity @s[tag=state1] unless entity @s[tag=state0] run function logic_gates:inputs/check_power_state/check_redstone
execute unless entity @s[tag=state1] unless entity @s[tag=state0] run return fail

function logic_gates:wire/debug/split

#added prev_on and prev_off to prevent infinite cycles when two inputs are connected to the same wire. Turning an input off always overrides any on inputs for that wire--bug.
execute if entity @s[tag=state1] run tag @s add prev_on
execute if entity @s[tag=state1] run tag @s remove prev_off
execute if entity @s[tag=state0] run tag @s add prev_off
execute if entity @s[tag=state0] run tag @s remove prev_on
tag @s remove state0
tag @s remove state1
execute if entity @n[tag=runner,distance=..2,type=armor_stand] run return run function logic_gates:wire/runner/runner_init


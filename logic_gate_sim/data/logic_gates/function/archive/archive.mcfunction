#old code for wire runner init. It used to go back to splits and gates when the runner reached the end of the wire. With it running simultaneously, this does not need to happen anymore

#checks for split and summons new armor stand if the former reaches the end of its wire. Then calls the loop
#execute as @n[tag=split,distance=0..,type=armor_stand] at @s run summon armor_stand ~ ~ ~ {Tags:[runner],Small:true,Marker:true,Invisible:false}
#execute as @n[tag=split,distance=0..,type=armor_stand] run scoreboard players set previous_wire_dir debug 0
#execute as @n[tag=split,distance=0..,type=armor_stand] run return run schedule function logic_gates:wire/runner/runner_init 1t
#
#scoreboard players add gate_level debug 1
#scoreboard players set previous_wire_dir debug 0
##scoreboard players operation wire_state debug = const_wire_state debug
#execute as @n[tag=gate,distance=0..,type=armor_stand] at @s run return run function logic_gates:wire/special_functions/not_block/check_which_block


#old bits for runner main
#execute unless entity @n[tag=runner,distance=2,type=armor_stand] run function logic_gates:wire/runner/check_blocks

#execute unless entity @n[tag=runner,distance=1..,type=armor_stand] run kill @n[tag=split,distance=..1,type=armor_stand]

#this was really only temporary. It did not work.
#execute unless entity @n[tag=runner,distance=0..,type=armor_stand] run summon armor_stand ~ ~ ~ {Tags:[end],Marker:true}
#schedule function logic_gates:wire/runner/kill_end 2t


#code for initializing gates (gate)
#execute unless entity @n[tag=gate,distance=0,type=armor_stand] run summon armor_stand ~ ~ ~ {Tags:[gate],Marker:true,Invisible:false}
##function logic_gates:wire/runner/check_blocks
#kill @s
#schedule function logic_gates:wire/runner/runner_init 1t


#I don't know what I was thinking. I could have just used the predicate (check_blocks)
#function logic_gates:wire/check_and_execute {block:"gray_carpet", command:"summon armor_stand", nbt:" {Tags:[runner],Small:true,Marker:true,Invisibl:false}"}
#function logic_gates:wire/check_and_execute {block:"white_carpet", command:"summon armor_stand", nbt:" {Tags:[runner],Small:true,Marker:true,Invisibl:false}"}
#
#execute if block ~ ~ ~ magenta_carpet run return fail
#function logic_gates:wire/check_and_execute {block:"light_blue_wool", command:"summon armor_stand", nbt:" {Tags:[runner],Small:true,Marker:true,Invisibl:false}"}
#function logic_gates:wire/check_and_execute {block:"lime_wool", command:"summon armor_stand", nbt:" {Tags:[runner],Small:true,Marker:true,Invisibl:false}"}
#function logic_gates:wire/check_and_execute {block:"blue_wool", command:"summon armor_stand", nbt:" {Tags:[runner],Small:true,Marker:true,Invisibl:false}"}
#function logic_gates:wire/check_and_execute {block:"red_wool", command:"summon armor_stand", nbt:" {Tags:[runner],Small:true,Marker:true,Invisibl:false}"}
#function logic_gates:wire/check_and_execute {block:"purple_wool", command:"summon armor_stand", nbt:" {Tags:[runner],Small:true,Marker:true,Invisibl:false}"}
#function logic_gates:wire/check_and_execute {block:"magenta_wool", command:"summon armor_stand", nbt:" {Tags:[runner],Small:true,Marker:true,Invisibl:false}"}
#function logic_gates:wire/check_and_execute {block:"light_gray_wool", command:"summon armor_stand", nbt:" {Tags:[runner],Small:true,Marker:true,Invisibl:false}"}
#function logic_gates:wire/check_and_execute {block:"gray_wool", command:"summon armor_stand", nbt:" {Tags:[runner],Small:true,Marker:true,Invisibl:false}"}


# I believe this was temporary as well. (send_wire_gate)
#execute as @s[tag=1] at @s run return run function logic_gates:wire/special_functions/not_block/gate_output {state:1}
#execute as @s[tag=0] at @s run return run function logic_gates:wire/special_functions/not_block/gate_output {state:0}
#kill @s

# there's still so much more leftover code. I'm done with this. Everything's gonna go into the recycling bin. Sorry if this interested you.
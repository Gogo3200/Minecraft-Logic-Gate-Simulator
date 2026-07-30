#checks around self for wire. Must have tag state1 or state0
#invis() - debug; armor stand visibility


$execute positioned ~ ~ ~-1 if entity @s[tag=state1] unless entity @s[tag=prev1] if block ~ ~ ~ black_carpet run return run summon armor_stand ~ ~ ~ {Tags:[runner, prev3, state1],Small:true,Marker:true,Invisible:$(invis)}
$execute positioned ~1 ~ ~ if entity @s[tag=state1] unless entity @s[tag=prev2] if block ~ ~ ~ black_carpet run return run summon armor_stand ~ ~ ~ {Tags:[runner, prev4, state1],Small:true,Marker:true,Invisible:$(invis)}
$execute positioned ~ ~ ~1 if entity @s[tag=state1] unless entity @s[tag=prev3] if block ~ ~ ~ black_carpet run return run summon armor_stand ~ ~ ~ {Tags:[runner, prev1, state1],Small:true,Marker:true,Invisible:$(invis)}
$execute positioned ~-1 ~ ~ if entity @s[tag=state1] unless entity @s[tag=prev4] if block ~ ~ ~ black_carpet run return run summon armor_stand ~ ~ ~ {Tags:[runner, prev2, state1],Small:true,Marker:true,Invisible:$(invis)}

$execute positioned ~ ~ ~-1 if entity @s[tag=state0] unless entity @s[tag=prev1] if block ~ ~ ~ red_carpet run return run summon armor_stand ~ ~ ~ {Tags:[runner, prev3, state0],Small:true,Marker:true,Invisible:$(invis)}
$execute positioned ~1 ~ ~ if entity @s[tag=state0] unless entity @s[tag=prev2] if block ~ ~ ~ red_carpet run return run summon armor_stand ~ ~ ~ {Tags:[runner, prev4, state0],Small:true,Marker:true,Invisible:$(invis)}
$execute positioned ~ ~ ~1 if entity @s[tag=state0] unless entity @s[tag=prev3] if block ~ ~ ~ red_carpet run return run summon armor_stand ~ ~ ~ {Tags:[runner, prev1, state0],Small:true,Marker:true,Invisible:$(invis)}
$execute positioned ~-1 ~ ~ if entity @s[tag=state0] unless entity @s[tag=prev4] if block ~ ~ ~ red_carpet run return run summon armor_stand ~ ~ ~ {Tags:[runner, prev2, state0],Small:true,Marker:true,Invisible:$(invis)}


execute if score show_wire debug matches 1 run function logic_gates:wire/check_predicate {invis:"false"}
execute unless score show_wire debug matches 1 run function logic_gates:wire/check_predicate {invis:"true"}

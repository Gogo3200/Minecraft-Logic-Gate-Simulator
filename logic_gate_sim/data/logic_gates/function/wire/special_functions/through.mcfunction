# tps itself one more block in the direction it is going using prev# tag.
# invis() - whether armor stand is invisible or not

$execute if entity @s[tag=prev3,tag=state1] run summon armor_stand ~ ~ ~-1 {Tags:[runner, prev3, state1],Small:true,Marker:true,Invisible:$(invis)}
$execute if entity @s[tag=prev4,tag=state1] run summon armor_stand ~1 ~ ~ {Tags:[runner, prev4, state1],Small:true,Marker:true,Invisible:$(invis)}
$execute if entity @s[tag=prev1,tag=state1] run summon armor_stand ~ ~ ~1 {Tags:[runner, prev1, state1],Small:true,Marker:true,Invisible:$(invis)}
$execute if entity @s[tag=prev2,tag=state1] run summon armor_stand ~-1 ~ ~ {Tags:[runner, prev2, state1],Small:true,Marker:true,Invisible:$(invis)}

$execute if entity @s[tag=prev3,tag=state0] run summon armor_stand ~ ~ ~-1 {Tags:[runner, prev3, state0],Small:true,Marker:true,Invisible:$(invis)}
$execute if entity @s[tag=prev4,tag=state0] run summon armor_stand ~1 ~ ~ {Tags:[runner, prev4, state0],Small:true,Marker:true,Invisible:$(invis)}
$execute if entity @s[tag=prev1,tag=state0] run summon armor_stand ~ ~ ~1 {Tags:[runner, prev1, state0],Small:true,Marker:true,Invisible:$(invis)}
$execute if entity @s[tag=prev2,tag=state0] run summon armor_stand ~-1 ~ ~ {Tags:[runner, prev2, state0],Small:true,Marker:true,Invisible:$(invis)}

kill @s
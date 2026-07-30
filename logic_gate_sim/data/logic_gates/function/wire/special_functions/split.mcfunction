# summons an armor stand on each surrounding appropriate carpet in one tick. Same code as Check_and_tag just without the "return run" so that every available carpet gets an armor stand instead of terminating after one.
# invis() - whether armor stand is invisible or not

$execute positioned ~ ~ ~-1 if entity @s[tag=state1] unless entity @s[tag=prev1] if block ~ ~ ~ black_carpet run summon armor_stand ~ ~ ~ {Tags:[runner, prev3, state1],Small:true,Marker:true,Invisible:$(invis)}
$execute positioned ~1 ~ ~ if entity @s[tag=state1] unless entity @s[tag=prev2] if block ~ ~ ~ black_carpet run summon armor_stand ~ ~ ~ {Tags:[runner, prev4, state1],Small:true,Marker:true,Invisible:$(invis)}
$execute positioned ~ ~ ~1 if entity @s[tag=state1] unless entity @s[tag=prev3] if block ~ ~ ~ black_carpet run summon armor_stand ~ ~ ~ {Tags:[runner, prev1, state1],Small:true,Marker:true,Invisible:$(invis)}
$execute positioned ~-1 ~ ~ if entity @s[tag=state1] unless entity @s[tag=prev4] if block ~ ~ ~ black_carpet run summon armor_stand ~ ~ ~ {Tags:[runner, prev2, state1],Small:true,Marker:true,Invisible:$(invis)}

$execute positioned ~ ~ ~-1 if entity @s[tag=state0] unless entity @s[tag=prev1] if block ~ ~ ~ red_carpet run summon armor_stand ~ ~ ~ {Tags:[runner, prev3, state0],Small:true,Marker:true,Invisible:$(invis)}
$execute positioned ~1 ~ ~ if entity @s[tag=state0] unless entity @s[tag=prev2] if block ~ ~ ~ red_carpet run summon armor_stand ~ ~ ~ {Tags:[runner, prev4, state0],Small:true,Marker:true,Invisible:$(invis)}
$execute positioned ~ ~ ~1 if entity @s[tag=state0] unless entity @s[tag=prev3] if block ~ ~ ~ red_carpet run summon armor_stand ~ ~ ~ {Tags:[runner, prev1, state0],Small:true,Marker:true,Invisible:$(invis)}
$execute positioned ~-1 ~ ~ if entity @s[tag=state0] unless entity @s[tag=prev4] if block ~ ~ ~ red_carpet run summon armor_stand ~ ~ ~ {Tags:[runner, prev2, state0],Small:true,Marker:true,Invisible:$(invis)}

execute unless entity @s[tag=input] run kill @s


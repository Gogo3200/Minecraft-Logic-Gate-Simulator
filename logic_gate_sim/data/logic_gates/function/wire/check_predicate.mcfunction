# Checks around self to see if nearby blocks satisfy a predicate and summons appropriately tagged armor stand there

$execute if entity @s[tag=state1] unless entity @s[tag=prev1] positioned ~ ~ ~-1 if predicate logic_gates:blocks run return run summon armor_stand ~ ~ ~ {Tags:[runner, prev3, state1],Marker:true,Small:true,Invisible:$(invis)}
$execute if entity @s[tag=state1] unless entity @s[tag=prev2] positioned ~1 ~ ~ if predicate logic_gates:blocks run return run summon armor_stand ~ ~ ~ {Tags:[runner, prev4, state1],Marker:true,Small:true,Invisible:$(invis)}
$execute if entity @s[tag=state1] unless entity @s[tag=prev3] positioned ~ ~ ~1 if predicate logic_gates:blocks run return run summon armor_stand ~ ~ ~ {Tags:[runner, prev1, state1],Marker:true,Small:true,Invisible:$(invis)}
$execute if entity @s[tag=state1] unless entity @s[tag=prev4] positioned ~-1 ~ ~ if predicate logic_gates:blocks run return run summon armor_stand ~ ~ ~ {Tags:[runner, prev2, state1],Marker:true,Small:true,Invisible:$(invis)}

$execute if entity @s[tag=state0] unless entity @s[tag=prev1] positioned ~ ~ ~-1 if predicate logic_gates:blocks run return run summon armor_stand ~ ~ ~ {Tags:[runner, prev3, state0],Marker:true,Small:true,Invisible:$(invis)}
$execute if entity @s[tag=state0] unless entity @s[tag=prev2] positioned ~1 ~ ~ if predicate logic_gates:blocks run return run summon armor_stand ~ ~ ~ {Tags:[runner, prev4, state0],Marker:true,Small:true,Invisible:$(invis)}
$execute if entity @s[tag=state0] unless entity @s[tag=prev3] positioned ~ ~ ~1 if predicate logic_gates:blocks run return run summon armor_stand ~ ~ ~ {Tags:[runner, prev1, state0],Marker:true,Small:true,Invisible:$(invis)}
$execute if entity @s[tag=state0] unless entity @s[tag=prev4] positioned ~-1 ~ ~ if predicate logic_gates:blocks run return run summon armor_stand ~ ~ ~ {Tags:[runner, prev2, state0],Marker:true,Small:true,Invisible:$(invis)}

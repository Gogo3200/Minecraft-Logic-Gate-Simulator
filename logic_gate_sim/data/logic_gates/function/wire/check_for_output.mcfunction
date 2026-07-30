#checks for magenta carpet
#state() - wire state to set runner's tag to.
#invis() - whether runner should be invisible or not.

$execute if block ~ ~ ~-1 magenta_carpet run summon armor_stand ~ ~ ~-1 {Tags:[runner, $(state), prev3], Marker:true, Small:true, Invisible:$(invis)}
$execute if block ~1 ~ ~ magenta_carpet run summon armor_stand ~1 ~ ~ {Tags:[runner, $(state), prev4], Marker:true, Small:true, Invisible:$(invis)}
$execute if block ~ ~ ~1 magenta_carpet run summon armor_stand ~ ~ ~1 {Tags:[runner, $(state), prev1], Marker:true, Small:true, Invisible:$(invis)}
$execute if block ~-1 ~ ~ magenta_carpet run summon armor_stand ~-1 ~ ~ {Tags:[runner, $(state), prev2], Marker:true, Small:true, Invisible:$(invis)}

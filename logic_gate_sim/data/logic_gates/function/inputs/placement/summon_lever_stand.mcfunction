# Summons an input armor stand aligned to the center of the block.
#invis() - whether the armor stand should be invisible.

$execute align xyz run summon armor_stand ~.5 ~ ~.5 {Small:true,Marker:1b,Tags:["input"],Invisible:$(invis)}
kill @s
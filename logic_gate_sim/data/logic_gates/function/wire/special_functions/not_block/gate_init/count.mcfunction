#checks for red and black carpets around self. Will tag with amount of on and both on and off carpets with the respective names on_# and in_#.
# this is a lot of code, but don't worry, it's only used every time there's a gate lol.

tag @s remove in_4
tag @s remove in_3
tag @s remove in_2
tag @s remove in_1

tag @s remove on_4
tag @s remove on_3
tag @s remove on_2
tag @s remove on_1
tag @s remove on_0

#adds to in_# for black carpets
execute if block ~ ~ ~-1 black_carpet if entity @s[tag=in_1,tag=in_2,tag=in_3] run tag @s add in_4
execute if block ~ ~ ~-1 black_carpet if entity @s[tag=in_1,tag=in_2] run tag @s add in_3
execute if block ~ ~ ~-1 black_carpet if entity @s[tag=in_1] run tag @s add in_2
execute if block ~ ~ ~-1 black_carpet run tag @s add in_1

execute if block ~1 ~ ~ black_carpet if entity @s[tag=in_1,tag=in_2,tag=in_3] run tag @s add in_4
execute if block ~1 ~ ~ black_carpet if entity @s[tag=in_1,tag=in_2] run tag @s add in_3
execute if block ~1 ~ ~ black_carpet if entity @s[tag=in_1] run tag @s add in_2
execute if block ~1 ~ ~ black_carpet run tag @s add in_1

execute if block ~ ~ ~1 black_carpet if entity @s[tag=in_1,tag=in_2,tag=in_3] run tag @s add in_4
execute if block ~ ~ ~1 black_carpet if entity @s[tag=in_1,tag=in_2] run tag @s add in_3
execute if block ~ ~ ~1 black_carpet if entity @s[tag=in_1] run tag @s add in_2
execute if block ~ ~ ~1 black_carpet run tag @s add in_1

execute if block ~-1 ~ ~ black_carpet if entity @s[tag=in_1,tag=in_2,tag=in_3] run tag @s add in_4
execute if block ~-1 ~ ~ black_carpet if entity @s[tag=in_1,tag=in_2] run tag @s add in_3
execute if block ~-1 ~ ~ black_carpet if entity @s[tag=in_1] run tag @s add in_2
execute if block ~-1 ~ ~ black_carpet run tag @s add in_1

#adds to both in_# and on_# for red carpets
execute if block ~ ~ ~-1 red_carpet if entity @s[tag=in_1,tag=in_2,tag=in_3] run tag @s add in_4
execute if block ~ ~ ~-1 red_carpet if entity @s[tag=on_1,tag=on_2,tag=on_3] run tag @s add on_4
execute if block ~ ~ ~-1 red_carpet if entity @s[tag=in_1,tag=in_2] run tag @s add in_3
execute if block ~ ~ ~-1 red_carpet if entity @s[tag=on_1,tag=on_2] run tag @s add on_3
execute if block ~ ~ ~-1 red_carpet if entity @s[tag=in_1] run tag @s add in_2
execute if block ~ ~ ~-1 red_carpet if entity @s[tag=on_1] run tag @s add on_2
execute if block ~ ~ ~-1 red_carpet run tag @s add in_1
execute if block ~ ~ ~-1 red_carpet run tag @s add on_1

execute if block ~1 ~ ~ red_carpet if entity @s[tag=in_1,tag=in_2,tag=in_3] run tag @s add in_4
execute if block ~1 ~ ~ red_carpet if entity @s[tag=on_1,tag=on_2,tag=on_3] run tag @s add on_4
execute if block ~1 ~ ~ red_carpet if entity @s[tag=in_1,tag=in_2] run tag @s add in_3
execute if block ~1 ~ ~ red_carpet if entity @s[tag=on_1,tag=on_2] run tag @s add on_3
execute if block ~1 ~ ~ red_carpet if entity @s[tag=in_1] run tag @s add in_2
execute if block ~1 ~ ~ red_carpet if entity @s[tag=on_1] run tag @s add on_2
execute if block ~1 ~ ~ red_carpet run tag @s add in_1
execute if block ~1 ~ ~ red_carpet run tag @s add on_1

execute if block ~ ~ ~1 red_carpet if entity @s[tag=in_1,tag=in_2,tag=in_3] run tag @s add in_4
execute if block ~ ~ ~1 red_carpet if entity @s[tag=on_1,tag=on_2,tag=on_3] run tag @s add on_4
execute if block ~ ~ ~1 red_carpet if entity @s[tag=in_1,tag=in_2] run tag @s add in_3
execute if block ~ ~ ~1 red_carpet if entity @s[tag=on_1,tag=on_2] run tag @s add on_3
execute if block ~ ~ ~1 red_carpet if entity @s[tag=in_1] run tag @s add in_2
execute if block ~ ~ ~1 red_carpet if entity @s[tag=on_1] run tag @s add on_2
execute if block ~ ~ ~1 red_carpet run tag @s add in_1
execute if block ~ ~ ~1 red_carpet run tag @s add on_1

execute if block ~-1 ~ ~ red_carpet if entity @s[tag=in_1,tag=in_2,tag=in_3] run tag @s add in_4
execute if block ~-1 ~ ~ red_carpet if entity @s[tag=on_1,tag=on_2,tag=on_3] run tag @s add on_4
execute if block ~-1 ~ ~ red_carpet if entity @s[tag=in_1,tag=in_2] run tag @s add in_3
execute if block ~-1 ~ ~ red_carpet if entity @s[tag=on_1,tag=on_2] run tag @s add on_3
execute if block ~-1 ~ ~ red_carpet if entity @s[tag=in_1] run tag @s add in_2
execute if block ~-1 ~ ~ red_carpet if entity @s[tag=on_1] run tag @s add on_2
execute if block ~-1 ~ ~ red_carpet run tag @s add in_1
execute if block ~-1 ~ ~ red_carpet run tag @s add on_1

#tag cleanup/remove lesser tags
execute if entity @s[tag=in_4] run tag @s remove in_3
execute if entity @s[tag=in_4] run tag @s remove in_2
execute if entity @s[tag=in_4] run tag @s remove in_1

execute if entity @s[tag=in_3] run tag @s remove in_2
execute if entity @s[tag=in_3] run tag @s remove in_1

execute if entity @s[tag=in_2] run tag @s remove in_1

#this isn't for in_# because logic blocks will never update without any inputs, so it's unecessary.
execute unless entity @s[tag=on_1] run return run tag @s add on_0

execute if entity @s[tag=on_4] run tag @s remove on_3
execute if entity @s[tag=on_4] run tag @s remove on_2
execute if entity @s[tag=on_4] run tag @s remove on_1

execute if entity @s[tag=on_3] run tag @s remove on_2
execute if entity @s[tag=on_3] run tag @s remove on_1

execute if entity @s[tag=on_2] run tag @s remove on_1

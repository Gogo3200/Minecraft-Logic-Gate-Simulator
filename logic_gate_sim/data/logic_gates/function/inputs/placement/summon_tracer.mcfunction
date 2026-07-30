# Summons a tracer with rotation.
#
# roty(int) - player's y rotation (Rotation[0])
# rotx(int) - plater's x rotation (Rotation[1])

$summon armor_stand ~ ~ ~ {Rotation:[$(roty), $(rotx)],NoGravity:true,Tags:["tracer"],Marker:1b,Invisible:true}
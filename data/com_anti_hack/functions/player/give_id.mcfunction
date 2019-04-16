# Get both halves of the players UUID
execute store result score @s coah.d.id run data get entity @s UUIDMost 0.0000000001
execute store result score @s coah.d.data run data get entity @s UUIDLeast 0.0000000001

# If they are negative invert them
execute if score @s coah.d.id matches ..-1 run scoreboard players operation @s coah.d.id *= -1 coah.math
execute if score @s coah.d.data matches ..-1 run scoreboard players operation @s coah.d.data *= -1 coah.math

# Subtract UUIDMost from UUIDLeast
scoreboard players operation @s coah.d.id -= @s coah.d.data

# Reset dataorary score
scoreboard players reset @s coah.d.data

#Give them a tag
tag @s add coah.has_id

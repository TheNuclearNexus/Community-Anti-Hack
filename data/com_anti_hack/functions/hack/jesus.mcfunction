tag @s remove coah.jesus
execute if entity @s[gamemode=!creative,gamemode=!spectator] unless entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}}] if block ~ ~-1 ~ water if block ~1 ~-1 ~ water if block ~-1 ~-1 ~ water if block ~ ~-1 ~1 water if block ~ ~-1 ~-1 water if block ~ ~0.1 ~ air run tag @s add coah.jesus
scoreboard players add @s[tag=coah.jesus] coah.t.jesus 1
execute if score @s coah.t.jesus matches 240.. run function com_anti_hack:hack/notify_jesus
execute if score @s coah.t.jesus matches 240.. run scoreboard players reset @s coah.t.jesus

# com_anti_hack:hack/jesus
## Used to detect jesus hacks
### Extends com_anti_hack:player/main

tag @s remove coah.jesus
execute if entity @s[gamemode=!creative,gamemode=!spectator] unless entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}}] if block ~ ~-.05 ~ water if block ~1 ~-.05 ~ water if block ~-1 ~-.05 ~ water if block ~ ~-.05 ~1 water if block ~ ~-.05 ~-1 water if block ~ ~0.05 ~ air run tag @s add coah.jesus
scoreboard players add @s[tag=coah.jesus] coah.t.jesus 1
execute if score @s coah.t.jesus matches 1.. if block ~ ~.1 ~ water run scoreboard players remove @s coah.t.jesus 1
execute if score @s coah.t.jesus matches 120.. run function com_anti_hack:admin/notify_jesus
execute if score @s coah.t.jesus matches 120.. run scoreboard players reset @s coah.t.jesus

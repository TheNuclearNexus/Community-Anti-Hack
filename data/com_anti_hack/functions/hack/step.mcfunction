# com_anti_hack:hack/step
## Used to detect step hacks
### Extends com_anti_hack:player/main

execute if entity @s[nbt={SelectedItem:{id:"minecraft:ender_pearl"}}] run scoreboard players set @s coah.t.step 200
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:ender_pearl"}]}] run scoreboard players set @s coah.t.step 200
execute at @s if block ~ ~ ~ minecraft:nether_portal run scoreboard players set @s coah.t.step 200
execute at @s if block ~1 ~ ~ minecraft:nether_portal run scoreboard players set @s coah.t.step 200 
execute at @s if block ~-1 ~ ~ minecraft:nether_portal run scoreboard players set @s coah.t.step 200
execute at @s if block ~ ~ ~1 minecraft:nether_portal run scoreboard players set @s coah.t.step 200
execute at @s if block ~ ~ ~-1 minecraft:nether_portal run scoreboard players set @s coah.t.step 200
execute at @s if block ~1 ~ ~1 minecraft:nether_portal run scoreboard players set @s coah.t.step 200
execute at @s if block ~1 ~ ~-1 minecraft:nether_portal run scoreboard players set @s coah.t.step 200
execute at @s if block ~-1 ~ ~1 minecraft:nether_portal run scoreboard players set @s coah.t.step 200
execute at @s if block ~-1 ~ ~-1 minecraft:nether_portal run scoreboard players set @s coah.t.step 200

tag @s remove coah.step
tag @s remove coah.notify_step
execute store result score @s coah.d.y1 run data get entity @s Pos[1] 100
scoreboard players operation @s coah.d.y1 -= @s coah.d.y
execute if score @s coah.d.y1 matches 200 if score @s coah.a.c.jump1 matches 0 run tag @s add coah.step
execute if score @s coah.d.y1 matches 300 if score @s coah.a.c.jump1 matches 0 run tag @s add coah.step
execute if score @s coah.d.y1 matches 400 if score @s coah.a.c.jump1 matches 0 run tag @s add coah.step
execute if score @s coah.d.y1 matches 500 if score @s coah.a.c.jump1 matches 0 run tag @s add coah.step
execute if score @s coah.d.y1 matches 600 if score @s coah.a.c.jump1 matches 0 run tag @s add coah.step
execute if score @s coah.d.y1 matches 700 if score @s coah.a.c.jump1 matches 0 run tag @s add coah.step
execute if score @s coah.d.y1 matches 800 if score @s coah.a.c.jump1 matches 0 run tag @s add coah.step
execute if score @s coah.d.y1 matches 900 if score @s coah.a.c.jump1 matches 0 run tag @s add coah.step
execute if score @s coah.d.y1 matches 1000 if score @s coah.a.c.jump1 matches 0 run tag @s add coah.step
scoreboard players set @s coah.a.u.chorus 0
scoreboard players remove @s[scores={coah.t.step=1..}] coah.t.step 1
execute store result score @s coah.d.y run data get entity @s Pos[1] 100
scoreboard players set @s[nbt={OnGround:1b}] coah.a.c.jump1 0

execute if entity @s[tag=coah.step,gamemode=!creative,gamemode=!spectator] if score @s coah.d.onground matches 1 if score @s coah.a.u.chorus matches 0 unless score @s coah.t.step matches 1.. run tag @s add coah.notify_step

execute if entity @s[tag=coah.notify_step] run function com_anti_hack:admin/notify_step

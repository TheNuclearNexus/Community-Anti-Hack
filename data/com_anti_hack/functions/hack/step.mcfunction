# com_anti_hack:hack/step
## Used to detect step hacks
### Extends com_anti_hack:player/main

tag @s remove coah.step
execute store result score @s coah.d.y1 run data get entity @s Pos[1] 100
scoreboard players operation @s coah.d.y1 -= @s coah.d.y
execute if score @s coah.d.y1 matches 200 if score @s coah.a.c.jump1 matches 0 run tag @s add coah.step
execute if score @s coah.d.y1 matches 300 if score @s coah.a.c.jump1 matches 0 run tag @s add coah.step
execute if score @s coah.d.y1 matches 400 if score @s coah.a.c.jump1 matches 0 run tag @s add coah.step
execute if score @s coah.d.y1 matches 500 if score @s coah.a.c.jump1 matches 0 run tag @s add coah.step
execute if score @s coah.d.y1 matches 600 if score @s coah.a.c.jump1 matches 0 run tag @s add coah.step
execute if score @s coah.d.y1 matches 700 if score @s coah.a.c.jump1 matches 0 run tag @s add coah.step
execute if score @s coah.d.y1 matches 800 if score @s coah.a.c.jump1 matches 0 run tag @s add coah.step
execute store result score @s coah.d.y run data get entity @s Pos[1] 100
scoreboard players set @s[nbt={OnGround:1b}] coah.a.c.jump1 0
execute if entity @s[tag=coah.step] as @s run function com_anti_hack:admin/notify_step

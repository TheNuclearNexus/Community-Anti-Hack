# com_anti_hack:hack/nofall
## Used to detect nofall hacks
### Extends com_anti_hack:player/main

tag @s remove coah.nofall
execute store result score @s coah.d.onground run data get entity @s OnGround
scoreboard players set @s coah.d.inair 0
execute if block ~ ~-1 ~ air if block ~1 ~-1 ~ air if block ~-1 ~-1 ~ air if block ~ ~-1 ~1 air if block ~ ~-1 ~-1 air if block ~1 ~-1 ~1 air if block ~1 ~-1 ~-1 air if block ~-1 ~-1 ~-1 air if block ~-1 ~-1 ~1 air if block ~ ~ ~ air if block ~1 ~ ~ air if block ~-1 ~ ~ air if block ~ ~ ~1 air if block ~ ~ ~-1 air if block ~1 ~ ~1 air if block ~1 ~ ~-1 air if block ~-1 ~ ~-1 air if block ~-1 ~ ~1 air run scoreboard players set @s coah.d.inair 1
execute if entity @s[gamemode=!creative,gamemode=!spectator] if score @s coah.d.inair matches 1 if score @s coah.d.onground matches 1 run tag @s add coah.nofall
scoreboard players add @s[tag=coah.nofall] coah.t.nofall 1
execute if score @s coah.t.nofall matches 100.. run function com_anti_hack:admin/notify_nofall
execute if score @s coah.t.nofall matches 100.. run scoreboard players reset @s coah.t.nofall

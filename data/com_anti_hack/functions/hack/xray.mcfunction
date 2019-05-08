# com_anti_hack:hack/xray
## Used for xray detection
### Extends com_anti_hack:player/main

execute if score @s coah.a.m.dia matches 1 run tag @s add coah.xray
execute if score @s coah.a.m.dia matches 1 if score @s coah.t.xray matches 900..30000 run scoreboard players add @s coah.d.xraytimes 1
execute if score @s coah.a.m.dia matches 1 if score @s coah.t.xray matches 900..30000 run scoreboard players operation @s coah.d.xraytotal += @s coah.t.xray
execute if score @s coah.a.m.dia matches 1 if score @s coah.t.xray matches 900..30000 run scoreboard players operation @s coah.d.xrayavg = @s coah.d.xraytotal
execute if score @s coah.a.m.dia matches 1 if score @s coah.t.xray matches 900..30000 run scoreboard players operation @s coah.d.xrayavg /= @s coah.d.xraytimes
execute if score @s coah.a.m.dia matches 1 if score @s coah.t.xray matches ..30000 run scoreboard players set @s coah.t.xray 0

execute if entity @s[tag=coah.xray,y=35,dy=256] run scoreboard players set @s coah.t.xray 0
execute if entity @s[tag=coah.xray,y=35,dy=256] run tag @s remove coah.xray
execute if score @s coah.t.xray matches 30000.. run tag @s remove coah.xray
execute if score @s coah.t.xray matches 30000.. run scoreboard players set @s coah.t.xray 0

scoreboard players add @s[tag=coah.xray] coah.t.xray 1
scoreboard players set @s coah.a.m.dia 0

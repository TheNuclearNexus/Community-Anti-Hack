# com_anti_hack:hack/xray
## Used for xray detection
### Extends com_anti_hack:player/main

scoreboard players add @s[scores={coah.a.m.dia=1..}] coah.t.dia 1

execute if score @s coah.t.dia matches 6000.. if score @s coah.a.m.dia matches 15.. run function com_anti_hack:admin/notify_xray
execute if score @s coah.t.dia matches 6000.. run scoreboard players reset @s coah.a.m.dia
execute if score @s coah.t.dia matches 6000.. run scoreboard players reset @s coah.t.dia

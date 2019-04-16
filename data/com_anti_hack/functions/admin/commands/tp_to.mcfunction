# com_anti_hack:admin/commands/tp_to
## Used to teleport an admin to a player
### Extends com_anti_hack:admin/commands/main

scoreboard players operation @a coah.d.id -= @s coah.a.tp
tp @s @a[scores={coah.d.id=0},limit=1]
scoreboard players operation @a coah.d.id += @s coah.a.tp
scoreboard players reset @s coah.a.tp

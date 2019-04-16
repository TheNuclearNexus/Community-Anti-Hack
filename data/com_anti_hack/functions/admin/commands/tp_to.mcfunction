# com_anti_hack:admin/commands/tp_to
## Used to teleport an admin to a player
### Extends com_anti_hack:admin/commands/main

scoreboard players operation @a coah.d.id -= @s coah.a.tp
execute store result score @s coah.d.data run tp @s @a[scores={coah.d.id=0},limit=1]

execute if score @s coah.d.data matches 1.. run tellraw @s [{"text":"ANTI-CHEAT> ","color":"gray","bold":true},{"text":"Successfully teleported to ","color":"green","bold":false},{"selector":"@a[scores={coah.d.id=0}]","color":"gray","bold":true}]
execute unless score @s coah.d.data matches 1.. run tellraw @s [{"text":"ANTI-CHEAT> ","color":"gray","bold":true},{"text":"No player with id: ","color":"red","bold":false},{"score":{"name":"@s","objective":"coah.a.tp"},"color":"gray","bold":true},{"text":" found!","color":"red","bold":false}]

scoreboard players operation @a coah.d.id += @s coah.a.tp
scoreboard players reset @s coah.a.tp
scoreboard players reset @s coah.d.data

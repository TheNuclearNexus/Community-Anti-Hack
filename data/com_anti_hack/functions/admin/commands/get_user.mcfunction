# com_anti_hack:admin/commands/get_user
## Used to find a user and get information about them
### Extends com_anti_hack:admin/commands/main

scoreboard players operation @a coah.d.id -= @s coah.a.findUser

execute store success score @s coah.d.data store result score @a[scores={coah.d.id=0}] coah.d.tempX run data get entity @a[scores={coah.d.id=0},limit=1] Pos[0]
execute if score @s coah.d.data matches 1.. store result score @a[scores={coah.d.id=0}] coah.d.tempY run data get entity @a[scores={coah.d.id=0},limit=1] Pos[1]
execute if score @s coah.d.data matches 1.. store result score @a[scores={coah.d.id=0}] coah.d.tempZ run data get entity @a[scores={coah.d.id=0},limit=1] Pos[2]

execute if score @s coah.d.data matches 1.. run tellraw @s ["",{"text":"[Username: ","color":"gray"},{"selector":"@a[scores={coah.d.id=0}]","color":"red"},{"text":"] [ID: ","color":"gray"},{"score":{"name":"@s","objective":"coah.a.findUser"},"color":"red","clickEvent":{"action":"suggest_command","value":"/trigger coah.a.tp set "},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click here to suggest tp command!","color":"gray"}]}}},{"text":"]","color":"gray"}]
execute if score @s coah.d.data matches 1.. run tellraw @s ["",{"text":"  Position: [X: ","color":"gray"},{"score":{"name":"@a[scores={coah.d.id=0}]","objective":"coah.d.tempX"},"color":"red"},{"text":",Y: ","color":"gray"},{"score":{"name":"@a[scores={coah.d.id=0}]","objective":"coah.d.tempY"},"color":"red"},{"text":",Z: ","color":"gray"},{"score":{"name":"@a[scores={coah.d.id=0}]","objective":"coah.d.tempZ"},"color":"red"},{"text":"]","color":"gray"}]

execute if score @s coah.d.data matches 1.. if entity @a[scores={coah.d.id=0},tag=coah.admin] run tellraw @s ["",{"text":"  Admin:","color":"gray"},{"text":" true","color":"green","bold":true}]
execute if score @s coah.d.data matches 1.. if entity @a[scores={coah.d.id=0},tag=!coah.admin] run tellraw @s ["",{"text":"  Admin:","color":"gray"},{"text":" false","color":"red","bold":true}]

execute if score @s coah.d.data matches 1.. if entity @a[scores={coah.d.id=0},tag=coah.can_gm] run tellraw @s ["",{"text":"  Can They Have Gamemode:","color":"gray"},{"text":" true","color":"green","bold":true}]
execute if score @s coah.d.data matches 1.. if entity @a[scores={coah.d.id=0},tag=!coah.can_gm] run tellraw @s ["",{"text":"  Can They Have Gamemode:","color":"gray"},{"text":" false","color":"red","bold":true}]

execute if score @s coah.d.data matches 1.. if entity @a[scores={coah.d.id=0},tag=coah.hacker] run tellraw @s ["",{"text":"  Hacker:","color":"gray"},{"text":" true","color":"green","bold":true}]
execute if score @s coah.d.data matches 1.. if entity @a[scores={coah.d.id=0},tag=!coah.hacker] run tellraw @s ["",{"text":"  Hacker:","color":"gray"},{"text":" false","color":"red","bold":true}]

execute if score @s coah.d.data matches 1.. if entity @a[scores={coah.d.id=0},gamemode=survival] run tellraw @s ["",{"text":"  Gamemode:","color":"gray"},{"text":" survival","color":"green","bold":true}]
execute if score @s coah.d.data matches 1.. if entity @a[scores={coah.d.id=0},gamemode=creative] run tellraw @s ["",{"text":"  Gamemode:","color":"gray"},{"text":" creative","color":"green","bold":true}]
execute if score @s coah.d.data matches 1.. if entity @a[scores={coah.d.id=0},gamemode=adventure] run tellraw @s ["",{"text":"  Gamemode:","color":"gray"},{"text":" adventure","color":"green","bold":true}]
execute if score @s coah.d.data matches 1.. if entity @a[scores={coah.d.id=0},gamemode=spectator] run tellraw @s ["",{"text":"  Gamemode:","color":"gray"},{"text":" spectator","color":"green","bold":true}]


scoreboard players operation @a coah.d.id += @s coah.a.findUser
scoreboard players reset @s coah.a.findUser

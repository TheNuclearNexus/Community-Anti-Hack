# com_anti_hack:admin/commands/main
## Used to run admin commands
### Extends com_anti_hack:player/main

scoreboard players enable @s coah.a.tp
execute if score @s coah.a.tp matches 1.. run function com_anti_hack:admin/commands/tp_to

scoreboard players enable @s coah.a.allUsers
execute if score @s coah.a.allUsers matches 1.. run function com_anti_hack:admin/commands/list_users

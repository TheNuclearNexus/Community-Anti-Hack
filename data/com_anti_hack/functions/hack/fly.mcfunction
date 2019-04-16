# com_anti_hack:admin/notify_jesus
## Used to detect a possible fly hacker
### Extends com_anti_hack:player/main

execute if entity @s[gamemode=!creative,gamemode=!spectator,nbt={abilities:{flying:1b}},tag=!coah.hacker] run function com_anti_hack:admin/notify_fly_100
execute if entity @s[gamemode=!creative,gamemode=!spectator,nbt={abilities:{flying:1b}},tag=!coah.hacker] run tag @s add coah.hacker

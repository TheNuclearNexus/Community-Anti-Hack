execute if entity @s[gamemode=!creative,gamemode=!spectator,nbt={abilities:{flying:1b}},tag=!coah.hacker] run function com_anti_hack:admin/notify_fly
execute if entity @s[gamemode=!creative,gamemode=!spectator,nbt={abilities:{flying:1b}},tag=!coah.hacker] run tag @s add coah.hacker

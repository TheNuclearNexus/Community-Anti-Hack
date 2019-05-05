# com_anti_hack:player/main
## Used to run player related functions
### Extends com_anti_hack:setup/main

# Run hacks
execute unless entity @s[tag=coah.can_gm] run function com_anti_hack:hack/gamemode
function com_anti_hack:hack/xray
function com_anti_hack:hack/killaura
function com_anti_hack:hack/speed
function com_anti_hack:hack/fly
function com_anti_hack:hack/jesus
function com_anti_hack:hack/step
function com_anti_hack:hack/nofall

# Hacker punishment
## TP
tp @s[tag=coah.hacker] 0 150 0
## Gamemode
gamemode adventure @s[tag=coah.hacker]
## Send message to hacker
execute unless score @s coah.m.hack matches 1.. run scoreboard players set @s[tag=coah.hacker] coah.m.hack 1
tellraw @s[tag=coah.hacker,scores={coah.m.hack=1}] [{"text":"ANTI-CHEAT> ","color":"gray","bold":true},{"text":"You have been auto-flagged for using hacks. You will be unable to play until an Admin fixes your state or otherwise bans you. If you are an admin yourself, don’t forget to [/tag yourname add coah.admin] to regain control.","color":"red","bold":false}]
execute if score @s coah.m.hack matches 1.. run scoreboard players set @s[tag=coah.hacker] coah.m.hack 2

# Reset coah.m.hack for all admins
scoreboard players set @s[tag=!coah.hacker] coah.m.hack 0
tag @s remove coah.hacker
# Basic Player things
## Assign Unique ID
execute unless entity @s[tag=coah.has_id] run function com_anti_hack:player/give_id
## Admin commands
execute if entity @s[tag=coah.admin] run function com_anti_hack:admin/commands/main
## Player attributes
function com_anti_hack:player/attributes

# com_anti_hack:player/main
## Used to run player related functions
### Extends com_anti_hack:setup/main

function com_anti_hack:hack/gamemode
function com_anti_hack:hack/xray
function com_anti_hack:hack/killaura
function com_anti_hack:hack/speed
function com_anti_hack:hack/fly

tp @s[tag=coah.hacker] 0 150 0

gamemode adventure @s[tag=coah.hacker]

scoreboard players set @s[tag=coah.hacker] coah.m.hack 1
tellraw @s[tag=coah.hacker,scores={coah.m.hack=1}] [{"text":"ANTI-CHEAT> ","color":"light_gray","bold":false},{"text":"You have been auto-flagged for using hacks. You will be unable to play until an Admin fixes your state or otherwise bans you. If you are an admin yourself, don’t forget to [/tag yourname add coah.admin] to regain control.","color":"red","bold":false}]
scoreboard players set @s[tag=coah.hacker] coah.m.hack 2
scoreboard players set @s[tag=!coah.admin] coah.m.hack 0

execute unless entity @s[tag=coah.has_id] run function com_anti_hack:player/give_id

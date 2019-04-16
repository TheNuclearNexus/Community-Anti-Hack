function com_anti_hack:hack/cadgamemode
function com_anti_hack:hack/cadxray
function com_anti_hack:hack/cadkillaura
function com_anti_hack:hack/cadspeed
function com_anti_hack:hack/cadfly

tp @s[tag=coah.hacker] 0 150 0

gamemode @s[tag=coah.hacker] adventure 

scoreboard players set @s[tag=coah.hacker] coah.m.hack 1
tellraw @s[tag=coah.hacker,scores={coah.m.hack=1}] [{"text":"ANTI-CHEAT> ","color":"light_gray","bold":false},{"text":"You have been auto-flagged for using hacks. You will be unable to play until an Admin fixes your state or otherwise bans you. If you are an admin yourself, don’t forget to [/tag yourname add coah.admin] to regain control.","color":"red","bold":false}]
scoreboard players set @s[tag=coah.hacker] coah.m.hack 2
scoreboard players set @s[!tag=coah.admin] coah.m.hack 0


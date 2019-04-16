# com_anti_hack:admin/commands/list_users
## Used to list all active users
### Extends com_anti_hack:admin/commands/main

tellraw @s [{"text":"ANTI-CHEAT> ","color":"gray","bold":true},{"text":"List of all active players:","color":"green","bold":false}]
execute as @a run tellraw @a[scores={coah.a.allUsers=1..}] ["",{"text":"  [Username: ","color":"gray"},{"selector":"@s","color":"red"},{"text":"] [ID: ","color":"gray"},{"score":{"name":"@s","objective":"coah.d.id"},"color":"red","clickEvent":{"action":"suggest_command","value":"/trigger coah.a.tp set "},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click here to suggest tp command!","color":"gray"}]}}},{"text":"]","color":"gray"}]
scoreboard players reset @s coah.a.allUsers

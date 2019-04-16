# com_anti_hack:admin/notify_fly
## Used to notify admins of a possible xray user
### Extends com_anti_hack:hack/fly

tellraw @a[tag=coah.admin] [{"text":"ANTI-CHEAT> ","color":"light_gray","bold":true},{"text":"Player with id: ","color":"red","bold":false},{"score":{"name":"@s","objective":"coah.d.id"},"color":"red","bold":false},{"text":" may be flying! To tp to them do \"/trigger coah.a.tp set ","color":"red","bold":false},{"score":{"name":"@s","objective":"coah.d.id"},"color":"red","bold":false},{"text":"\"","color":"red","bold":false}]

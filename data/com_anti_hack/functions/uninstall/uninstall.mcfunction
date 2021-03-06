# Timer objectives
## "coah.t.name"
scoreboard objectives remove coah.t.xray
scoreboard objectives remove coah.t.jesus
scoreboard objectives remove coah.t.nofall
scoreboard objectives remove coah.t.step

# Action objectives
## "coah.a.action.name"
### Mined | "coah.a.m.name"
scoreboard objectives remove coah.a.m.dia
### Used | "coah.a.u.name"
scoreboard objectives remove coah.a.u.chorus
### Custom | "coah.a.c.name"
scoreboard objectives remove coah.a.c.walk
scoreboard objectives remove coah.a.c.sprint
scoreboard objectives remove coah.a.c.jump
scoreboard objectives remove coah.a.c.jump1

# Dummy objectives
### Messages | "coah.m.name"
scoreboard objectives remove coah.m.hack
scoreboard objectives remove coah.m.xray
### Data | "coah.d.name"
scoreboard objectives remove coah.d.id
scoreboard objectives remove coah.d.data
scoreboard objectives remove coah.d.y
scoreboard objectives remove coah.d.y1
scoreboard objectives remove coah.d.onground
scoreboard objectives remove coah.d.inair
scoreboard objectives remove coah.d.xraytotal
scoreboard objectives remove coah.d.xraytimes
scoreboard objectives remove coah.d.xrayavg
#### Temp Position
scoreboard objectives remove coah.d.tempX
scoreboard objectives remove coah.d.tempY
scoreboard objectives remove coah.d.tempZ
### Math | "coah.math"
scoreboard objectives remove coah.math

# Trigger objectives
## Admin | "coah.a.name"
scoreboard objectives remove coah.a.tp
scoreboard objectives remove coah.a.findUser
scoreboard objectives remove coah.a.allUsers
## Default | "coah.d.name"

# Tags
## Must run this function file for several weeks to remove all tags from all players.
tag @s[tag=coah.admin] remove coah.admin
tag @s[tag=coah.can_gm] remove coah.can_gm
tag @s[tag=coah.hacker] remove coah.hacker
tag @s[tag=coah.jesus] remove coah.jesus
tag @s[tag=coah.p.walk] remove coah.p.walk
tag @s[tag=coah.p.sprint] remove coah.p.sprint
tag @s[tag=coah.p.jump] remove coah.p.jump
tag @s[tag=coah.has_id] remove coah.has_id
tag @s[tag=coah.step] remove coah.step
tag @s[tag=coah.notify_step] remove coah.notify_step
tag @s[tag=coah.xray] remove coah.xray

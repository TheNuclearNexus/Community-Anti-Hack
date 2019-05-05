# Timer objectives
## "coah.t.name"
scoreboard objectives add coah.t.dia dummy
scoreboard objectives add coah.t.jesus dummy
scoreboard objectives add coah.t.nofall dummy

# Action objectives
## "coah.a.action.name"
### Mined | "coah.a.m.name"
scoreboard objectives add coah.a.m.dia minecraft.mined:minecraft.diamond_ore
### Used | "coah.a.u.name"
### Custom | "coah.a.c.name"
scoreboard objectives add coah.a.c.walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add coah.a.c.sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add coah.a.c.jump minecraft.custom:minecraft.jump
scoreboard objectives add coah.a.c.jump1 minecraft.custom:minecraft.jump

# Dummy objectives
### Messages | "coah.m.name"
scoreboard objectives add coah.m.hack dummy
scoreboard objectives add coah.m.xray dummy
### Data | "coah.d.name"
scoreboard objectives add coah.d.id dummy
scoreboard objectives add coah.d.data dummy
scoreboard objectives add coah.d.y dummy
scoreboard objectives add coah.d.y1 dummy
scoreboard objectives add coah.d.onground dummy
scoreboard objectives add coah.d.inair dummy
#### Temp Position
scoreboard objectives add coah.d.tempX dummy
scoreboard objectives add coah.d.tempY dummy
scoreboard objectives add coah.d.tempZ dummy
### Math | "coah.math"
scoreboard objectives add coah.math dummy

# Setup vars/fake players
scoreboard players set -1 coah.math -1
scoreboard players set 2 coah.math 2
scoreboard players set 10 coah.math 10
scoreboard players set 100 coah.math 100

# Trigger objectives
## Admin | "coah.a.name"
scoreboard objectives add coah.a.tp trigger
scoreboard objectives add coah.a.findUser trigger
scoreboard objectives add coah.a.allUsers trigger
## Default | "coah.d.name"

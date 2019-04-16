# Timer objectives
## "coah.t.name"
scoreboard objectives add coah.t.dia dummy

# Action objectives
## "coah.a.action.name"
### Mined | "coah.a.m.name"
scoreboard objectives add coah.a.m.dia minecraft.mined:minecraft.diamond_ore
### Used | "coah.a.u.name"
### Custom | "coah.a.c.name"

# Dummy objectives
### Messages | "coah.m.name"
scoreboard objectives add coah.m.hack dummy
scoreboard objectives add coah.m.xray dummy
### Data | "coah.d.name"
scoreboard objectives add coah.d.id dummy
scoreboard objectives add coah.d.data dummy
### Math | "coah.math"
scoreboard objectives add coah.math dummy

# Setup vars/fake players
scoreboard players set -1 coah.math -1
scoreboard players set 2 coah.math 2
scoreboard players set 10 coah.math 10
scoreboard players set 100 coah.math 100

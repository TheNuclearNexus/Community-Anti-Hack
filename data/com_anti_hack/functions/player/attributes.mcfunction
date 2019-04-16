# Is Player walking?
tag @s remove coah.p.walk
execute if score @s coah.a.c.walk matches 1.. run tag @s add coah.p.walk
execute if score @s coah.a.c.walk matches 1.. run scoreboard players reset @s coah.a.c.walk
execute if score @s coah.a.c.sprint matches 1.. run tag @s add coah.p.walk
execute if score @s coah.a.c.sprint matches 1.. run scoreboard players reset @s coah.a.c.sprint

# Is Player jumping?
execute unless block ~ ~-0.01 ~ air unless block ~ ~-0.01 ~ void_air unless block ~ ~-0.01 ~ cave_air run tag @s remove coah.p.jump
execute if score @s coah.a.c.jump matches 1.. run tag @s add coah.p.jump
execute if score @s coah.a.c.jump matches 1.. run scoreboard players reset @s coah.a.c.jump

# ONCE BEFORE THE GAME
kill @e[type=armor_stand]
fill ~ ~2 ~ ~9 ~2 ~9 emerald_block
summon armor_stand ~ ~1 ~ {Tags:[field,rowroot,columnroot], Invisible:1b, Invulnerable:1b}
execute at @e[tag=rowroot] align y run summon armor_stand ~5 ~ ~ {Tags:[field,rowroot,columnroot], Invisible:1b, Invulnerable:1b, NoGravity:1b}
execute at @e[tag=rowroot] align y run summon armor_stand ~1 ~ ~ {Tags:[field,columnroot], Invisible:1b, Invulnerable:1b, NoGravity:1b}
execute at @e[tag=rowroot] align y run summon armor_stand ~2 ~ ~ {Tags:[field,columnroot], Invisible:1b, Invulnerable:1b, NoGravity:1b}
execute at @e[tag=rowroot] align y run summon armor_stand ~3 ~ ~ {Tags:[field,columnroot], Invisible:1b, Invulnerable:1b, NoGravity:1b}
execute at @e[tag=rowroot] align y run summon armor_stand ~4 ~ ~ {Tags:[field,columnroot], Invisible:1b, Invulnerable:1b, NoGravity:1b}
execute at @e[tag=columnroot] align y run summon armor_stand ~ ~ ~5 {Tags:[field,columnroot], Invisible:1b, Invulnerable:1b, NoGravity:1b}
execute at @e[tag=columnroot] align y run summon armor_stand ~ ~ ~1 {Tags:[field], Invisible:1b, Invulnerable:1b, NoGravity:1b}
execute at @e[tag=columnroot] align y run summon armor_stand ~ ~ ~2 {Tags:[field], Invisible:1b, Invulnerable:1b, NoGravity:1b}
execute at @e[tag=columnroot] align y run summon armor_stand ~ ~ ~3 {Tags:[field], Invisible:1b, Invulnerable:1b, NoGravity:1b}
execute at @e[tag=columnroot] align y run summon armor_stand ~ ~ ~4 {Tags:[field], Invisible:1b, Invulnerable:1b, NoGravity:1b}
tag @e[sort=random,limit=15,tag=field] add bomb
scoreboard players set @e[tag=field] bomb_count 0
execute at @e[tag=bomb] run scoreboard players add @e[tag=field,distance=..1.5] bomb_count 1

# to make the start of the game a bit easier uncomment this:
# execute as @e[tag=field,tag=!bomb,scores={bomb_count=0},sort=random,limit=1] at @s run fill ~ ~1 ~ ~ ~1 ~ air
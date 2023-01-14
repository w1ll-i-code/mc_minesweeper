# ONCE BEFORE THE GAME
kill @e[type=armor_stand]
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

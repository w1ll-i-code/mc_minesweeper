# LOOP
execute as @e[tag=field,tag=!bomb,tag=!update] at @s if block ~ ~1 ~ air run tag @s add update
execute as @e[tag=update,tag=!handled,scores={bomb_count=0}] at @s run fill ~1 ~1 ~1 ~-1 ~1 ~-1 air replace emerald_block
execute as @e[tag=update,tag=!handled,scores={bomb_count=1}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b, Invulnerable:1b, NoGravity:1b, CustomName:"1",CustomNameVisible:1b}
execute as @e[tag=update,tag=!handled,scores={bomb_count=2}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b, Invulnerable:1b, NoGravity:1b, CustomName:"2",CustomNameVisible:1b}
execute as @e[tag=update,tag=!handled,scores={bomb_count=3}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b, Invulnerable:1b, NoGravity:1b, CustomName:"3",CustomNameVisible:1b}
execute as @e[tag=update,tag=!handled,scores={bomb_count=4}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b, Invulnerable:1b, NoGravity:1b, CustomName:"4",CustomNameVisible:1b}
execute as @e[tag=update,tag=!handled,scores={bomb_count=5}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b, Invulnerable:1b, NoGravity:1b, CustomName:"5",CustomNameVisible:1b}
execute as @e[tag=update,tag=!handled,scores={bomb_count=6}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b, Invulnerable:1b, NoGravity:1b, CustomName:"6",CustomNameVisible:1b}
execute as @e[tag=update,tag=!handled,scores={bomb_count=7}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b, Invulnerable:1b, NoGravity:1b, CustomName:"7",CustomNameVisible:1b}
execute as @e[tag=update,tag=!handled,scores={bomb_count=8}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b, Invulnerable:1b, NoGravity:1b, CustomName:"8",CustomNameVisible:1b}
execute as @e[tag=update,tag=!handled] run tag @s add handled

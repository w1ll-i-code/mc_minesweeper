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

# LOOSE CONDITION LOOP
execute at @e[tag=bomb] if block ~ ~1 ~ air run tag @a add lost
execute at @a[tag=lost] run playsound entity.wither.death player @a
execute as @a[tag=lost] at @e[tag=bomb] run summon armor_stand ~ ~ ~ {Invisible:1b, Invulnerable:1b, NoGravity:1b, CustomName:'"Bomb"',CustomNameVisible:1b}
execute as @a[tag=lost] run kill @e[tag=field]
execute as @a[tag=lost] run title @a title "BOOOOOM"
tag @a remove lost

# WIN CONDITION LOOP
execute as @e[tag=field] at @s if block ~ ~1 ~ emerald_block run scoreboard players add @a fields_left 1
execute as @p[scores={fields_left=15}] run tag @a add won
execute as @a[tag=won] run title @p title "You won"
execute as @a[tag=won] run playsound entity.player.levelup player @p ~ ~ ~
execute as @a[tag=won] run kill @e[tag=field]
scoreboard players set @a fields_left 0
tag @e remove won
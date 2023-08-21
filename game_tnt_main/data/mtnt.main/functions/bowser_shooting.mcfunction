#built using mc-build (https://github.com/mc-build/mc-build)

execute as @e[type=#models_logic:aj_mobs,tag=bowser,tag=aj_mob] at @s anchored eyes positioned ^ ^ ^1 if entity @a[distance=..9] run function mtnt.main:__generated__/execute/179
execute as @e[type=fireball, tag=bowser_fireball, tag=!tag_added] at @s rotated as @e[type=#models_logic:aj_mobs, tag=bowser,tag=aj_mob, limit=1, sort=nearest] run function mtnt.main:__generated__/execute/180
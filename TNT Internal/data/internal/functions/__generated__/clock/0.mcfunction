#built using mc-build (https://github.com/mc-build/mc-build)

schedule function internal:__generated__/clock/0 1s
execute as @e[type=#internal:hostile] at @s if entity @e[type=#models_logic:aj_mobs,tag=pikachu,tag=aj_mob, distance=..15] run summon lightning_bolt ~ ~ ~
#built using mc-build (https://github.com/mc-build/mc-build)

schedule function internal:__generated__/clock/1 8s
execute as @e[type=#models_logic:aj_mobs,tag=rainbow_red,tag=aj_mob] at @s if entity @a[distance=..30] run function internal:missiles
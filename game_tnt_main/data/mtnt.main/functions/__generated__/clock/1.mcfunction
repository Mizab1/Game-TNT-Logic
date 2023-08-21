#built using mc-build (https://github.com/mc-build/mc-build)

schedule function mtnt.main:__generated__/clock/1 10t
execute as @e[type=#models_logic:aj_mobs,tag=rainbow_cyan,tag=aj_mob] at @s run particle block dirt ^ ^0.2 ^-0.6 0.3 0 0.3 0 5
execute as @e[type=#models_logic:aj_mobs,tag=bowser,tag=aj_mob] at @s run particle flame ^ ^0.2 ^-0.6 1 0 1 0 40
execute as @e[type=#models_logic:aj_mobs,tag=bowser,tag=aj_mob] at @s run tp @s ~ ~ ~ facing entity @a[distance=..9, limit=1, sort=nearest]
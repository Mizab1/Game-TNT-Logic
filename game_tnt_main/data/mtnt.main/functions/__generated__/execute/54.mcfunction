#built using mc-build (https://github.com/mc-build/mc-build)

tag @s add revolve
execute positioned ~ ~ ~5 run function models_logic:summon/huggy_wuggy
tag @e[type=husk, tag=huggy_wuggy, limit=1, tag=!huggy_1, tag=!huggy_2, tag=!huggy_3, distance=..15] add huggy_1
execute positioned ~4.35 ~ ~-2.5 run function models_logic:summon/huggy_wuggy
tag @e[type=husk, tag=huggy_wuggy, limit=1, tag=!huggy_1, tag=!huggy_2, tag=!huggy_3, distance=..15] add huggy_2
execute positioned ~-4.35 ~ ~-2.5 run function models_logic:summon/huggy_wuggy
tag @e[type=husk, tag=huggy_wuggy, limit=1, tag=!huggy_1, tag=!huggy_2, tag=!huggy_3, distance=..15] add huggy_3
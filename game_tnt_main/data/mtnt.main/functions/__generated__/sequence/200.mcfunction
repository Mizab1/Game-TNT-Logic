#built using mc-build (https://github.com/mc-build/mc-build)

execute at @e[type=husk, tag=huggy_wuggy] run particle dust 0 0 1 2 ~ ~ ~ 0.5 0.5 0.5 1 30
execute as @a[tag=revolve] run effect give @s slowness 1 10 true
execute at @a[tag=revolve] run tp @e[type=husk, tag=huggy_1, limit=1, distance=..15] ~-5 ~ ~0.44999999999999996 facing entity @a[limit=1]
execute at @a[tag=revolve] run tp @e[type=husk, tag=huggy_2, limit=1, distance=..15] ~2.8499999999999996 ~ ~4.1 facing entity @a[limit=1]
execute at @a[tag=revolve] run tp @e[type=husk, tag=huggy_3, limit=1, distance=..15] ~2.1 ~ ~-4.55 facing entity @a[limit=1]
tag @a remove revolve
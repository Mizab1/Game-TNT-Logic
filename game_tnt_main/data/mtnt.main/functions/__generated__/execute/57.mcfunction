#built using mc-build (https://github.com/mc-build/mc-build)

execute positioned ~2 ~ ~3 run function models_logic:summon/aqua
execute positioned ~-2 ~ ~-4 run function models_logic:summon/purple
execute positioned ~ ~ ~3 run function models_logic:summon/yellow
execute as @a at @s run tp @s ~ ~ ~ facing entity @e[type=marker, tag=emergency_meeting_anchor,sort=nearest, limit=1]
#built using mc-build (https://github.com/mc-build/mc-build)

execute positioned ~2 ~ ~3 run function models_logic:summon/aqua
execute positioned ~-2 ~ ~-4 run function models_logic:summon/purple
execute positioned ~ ~ ~3 run function models_logic:summon/yellow
spreadplayers ~ ~ 3 8 true @e[type=#aestd1:living_base, tag=!aj_mob]
execute as @a at @s run tp @s ~ ~ ~ facing entity @e[type=item_display, tag=emergency_meeting_anchor,sort=nearest, limit=1]
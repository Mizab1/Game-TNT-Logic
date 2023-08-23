#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
execute positioned ~7.521 ~ ~3.125 run function models_logic:summon/backdoor
execute positioned ~0.181 ~ ~4.214 run function models_logic:summon/backdoor_hound
execute positioned ~-0.806 ~ ~-3.554 run function models_logic:summon/backdoor_watcher
execute positioned ~-0.626 ~ ~3.906 run function models_logic:summon/backdoor_worm
execute positioned ~-6.656 ~ ~3.438 run function models_logic:summon/backdoor
execute positioned ~-2.895 ~ ~-5.286 run function models_logic:summon/backdoor_hound
execute positioned ~-2.999 ~ ~-7.491 run function models_logic:summon/backdoor_watcher
execute positioned ~-4.014 ~ ~-0.961 run function models_logic:summon/backdoor_worm
particle poof ~ ~1 ~ 2 2 2 0.5 1000
tellraw @a {"text":"What are those Mobs?!", "color":"red"}
playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.1
kill @s
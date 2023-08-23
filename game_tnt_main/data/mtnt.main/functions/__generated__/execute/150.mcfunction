#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
execute positioned ~-6.997 ~ ~-2.645 run function models_logic:summon/backdoor
execute positioned ~-0.956 ~ ~4.401 run function models_logic:summon/backdoor_hound
execute positioned ~-6.067 ~ ~-0.037 run function models_logic:summon/backdoor_watcher
execute positioned ~1.198 ~ ~7.431 run function models_logic:summon/backdoor_worm
execute positioned ~4.076 ~ ~2.004 run function models_logic:summon/backdoor
execute positioned ~-1.126 ~ ~2.326 run function models_logic:summon/backdoor_hound
execute positioned ~6.511 ~ ~3.722 run function models_logic:summon/backdoor_watcher
execute positioned ~1.326 ~ ~-6.491 run function models_logic:summon/backdoor_worm
particle poof ~ ~1 ~ 2 2 2 0.5 1000
tellraw @a {"text":"What are those Mobs?!", "color":"red"}
playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.1
kill @s
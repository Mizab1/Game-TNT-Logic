#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
execute positioned ~-5.831 ~ ~-4.030 run function models_logic:summon/backdoor
execute positioned ~-7.436 ~ ~-1.163 run function models_logic:summon/backdoor_hound
execute positioned ~-3.329 ~ ~3.501 run function models_logic:summon/backdoor_watcher
execute positioned ~2.068 ~ ~-2.041 run function models_logic:summon/backdoor_worm
execute positioned ~3.965 ~ ~-6.396 run function models_logic:summon/backdoor
execute positioned ~-5.726 ~ ~-2.954 run function models_logic:summon/backdoor_hound
execute positioned ~4.026 ~ ~-7.771 run function models_logic:summon/backdoor_watcher
execute positioned ~-7.550 ~ ~-2.940 run function models_logic:summon/backdoor_worm
particle poof ~ ~1 ~ 2 2 2 0.5 1000
tellraw @a {"text":"What are those Mobs?!", "color":"red"}
playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.1
kill @s
#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
execute positioned ~4.322 ~ ~5.658 run function models_logic:summon/backdoor
execute positioned ~-6.291 ~ ~-6.657 run function models_logic:summon/backdoor_hound
execute positioned ~2.105 ~ ~-0.687 run function models_logic:summon/backdoor_watcher
execute positioned ~-7.529 ~ ~4.813 run function models_logic:summon/backdoor_worm
execute positioned ~6.872 ~ ~-0.069 run function models_logic:summon/backdoor
execute positioned ~5.908 ~ ~-3.924 run function models_logic:summon/backdoor_hound
execute positioned ~-3.256 ~ ~7.820 run function models_logic:summon/backdoor_watcher
execute positioned ~3.001 ~ ~-6.843 run function models_logic:summon/backdoor_worm
particle poof ~ ~1 ~ 2 2 2 0.5 1000
tellraw @a {"text":"What are those Mobs?!", "color":"red"}
playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.1
kill @s
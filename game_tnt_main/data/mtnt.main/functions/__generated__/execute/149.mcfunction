#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
execute positioned ~-1.127 ~ ~-6.714 run function models_logic:summon/backdoor
execute positioned ~-5.138 ~ ~-2.831 run function models_logic:summon/backdoor_hound
execute positioned ~7.638 ~ ~-1.343 run function models_logic:summon/backdoor_watcher
execute positioned ~-0.577 ~ ~3.476 run function models_logic:summon/backdoor_worm
execute positioned ~2.205 ~ ~1.424 run function models_logic:summon/backdoor
execute positioned ~-4.250 ~ ~-0.818 run function models_logic:summon/backdoor_hound
execute positioned ~4.133 ~ ~7.632 run function models_logic:summon/backdoor_watcher
execute positioned ~6.532 ~ ~-4.918 run function models_logic:summon/backdoor_worm
particle poof ~ ~1 ~ 2 2 2 0.5 1000
tellraw @a {"text":"What are those Mobs?!", "color":"red"}
playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.1
kill @s
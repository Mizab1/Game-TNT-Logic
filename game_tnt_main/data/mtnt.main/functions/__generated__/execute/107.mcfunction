#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
execute positioned ~4.649 ~ ~4.033 run function models_logic:summon/mutant_creeper
execute positioned ~4.759 ~ ~-3.656 run function models_logic:summon/mutant_creeper
execute positioned ~-1.924 ~ ~1.048 run function models_logic:summon/mutant_creeper
execute positioned ~1.106 ~ ~-4.728 run function models_logic:summon/mutant_creeper
execute positioned ~-0.421 ~ ~-4.820 run function models_logic:summon/mutant_creeper
playsound minecraft:entity.creeper.hurt master @a ~ ~ ~ 1 0.7
kill @s
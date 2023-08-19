#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
execute positioned ~-4.374 ~ ~3.822 run function models_logic:summon/mutant_creeper
execute positioned ~4.429 ~ ~-0.846 run function models_logic:summon/mutant_creeper
execute positioned ~0.090 ~ ~1.828 run function models_logic:summon/mutant_creeper
execute positioned ~-2.518 ~ ~2.117 run function models_logic:summon/mutant_creeper
execute positioned ~-4.488 ~ ~1.709 run function models_logic:summon/mutant_creeper
playsound minecraft:entity.creeper.hurt master @a ~ ~ ~ 1 0.7
kill @s
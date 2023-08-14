#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
execute positioned ~0.731 ~ ~-3.749 run function models_logic:summon/mutant_creeper
execute positioned ~4.795 ~ ~1.708 run function models_logic:summon/mutant_creeper
execute positioned ~0.822 ~ ~-1.029 run function models_logic:summon/mutant_creeper
execute positioned ~3.336 ~ ~1.390 run function models_logic:summon/mutant_creeper
execute positioned ~-1.973 ~ ~-4.350 run function models_logic:summon/mutant_creeper
playsound minecraft:entity.creeper.hurt master @a ~ ~ ~ 1 0.7
kill @s
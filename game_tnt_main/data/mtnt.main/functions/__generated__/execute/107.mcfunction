#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
execute positioned ~-1.487 ~ ~0.646 run function models_logic:summon/mutant_creeper
execute positioned ~-3.509 ~ ~2.514 run function models_logic:summon/mutant_creeper
execute positioned ~-4.872 ~ ~-3.226 run function models_logic:summon/mutant_creeper
execute positioned ~-1.773 ~ ~3.336 run function models_logic:summon/mutant_creeper
execute positioned ~3.830 ~ ~1.234 run function models_logic:summon/mutant_creeper
playsound minecraft:entity.creeper.hurt master @a ~ ~ ~ 1 0.7
kill @s
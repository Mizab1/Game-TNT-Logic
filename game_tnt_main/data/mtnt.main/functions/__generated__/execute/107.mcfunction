#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
execute positioned ~4.859 ~ ~0.419 run function models_logic:summon/mutant_creeper
execute positioned ~1.018 ~ ~-1.581 run function models_logic:summon/mutant_creeper
execute positioned ~-4.214 ~ ~-2.588 run function models_logic:summon/mutant_creeper
execute positioned ~3.191 ~ ~0.786 run function models_logic:summon/mutant_creeper
execute positioned ~3.478 ~ ~-2.489 run function models_logic:summon/mutant_creeper
playsound minecraft:entity.creeper.hurt master @a ~ ~ ~ 1 0.7
kill @s
#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
execute positioned ~-1.900 ~ ~1.137 run function models_logic:summon/mutant_creeper
execute positioned ~1.425 ~ ~-2.187 run function models_logic:summon/mutant_creeper
execute positioned ~2.596 ~ ~-0.478 run function models_logic:summon/mutant_creeper
execute positioned ~-1.942 ~ ~0.377 run function models_logic:summon/mutant_creeper
execute positioned ~-4.801 ~ ~3.845 run function models_logic:summon/mutant_creeper
playsound minecraft:entity.creeper.hurt master @a ~ ~ ~ 1 0.7
kill @s
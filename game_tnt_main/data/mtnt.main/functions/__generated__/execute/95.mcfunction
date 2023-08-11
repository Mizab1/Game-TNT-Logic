#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
execute positioned ~4.126 ~ ~-1.604 run function models_logic:summon/mutant_creeper
execute positioned ~0.287 ~ ~-3.903 run function models_logic:summon/mutant_creeper
execute positioned ~3.175 ~ ~-2.882 run function models_logic:summon/mutant_creeper
execute positioned ~-3.561 ~ ~4.281 run function models_logic:summon/mutant_creeper
execute positioned ~-1.737 ~ ~4.963 run function models_logic:summon/mutant_creeper
playsound minecraft:entity.creeper.hurt master @a ~ ~ ~ 1 0.7
kill @s
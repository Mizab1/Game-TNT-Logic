#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
execute positioned ~1.770 ~ ~-4.890 run function models_logic:summon/mutant_creeper
execute positioned ~-2.214 ~ ~-2.728 run function models_logic:summon/mutant_creeper
execute positioned ~-0.624 ~ ~4.247 run function models_logic:summon/mutant_creeper
execute positioned ~-2.965 ~ ~-2.678 run function models_logic:summon/mutant_creeper
execute positioned ~2.127 ~ ~-2.499 run function models_logic:summon/mutant_creeper
playsound minecraft:entity.creeper.hurt master @a ~ ~ ~ 1 0.7
kill @s
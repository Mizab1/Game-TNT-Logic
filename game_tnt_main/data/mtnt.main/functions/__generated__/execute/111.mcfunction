#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
execute positioned ~-0.950 ~ ~-2.477 run function models_logic:summon/mutant_creeper
execute positioned ~-2.761 ~ ~-3.759 run function models_logic:summon/mutant_creeper
execute positioned ~-2.188 ~ ~0.152 run function models_logic:summon/mutant_creeper
execute positioned ~4.546 ~ ~1.289 run function models_logic:summon/mutant_creeper
execute positioned ~2.709 ~ ~-0.993 run function models_logic:summon/mutant_creeper
playsound minecraft:entity.creeper.hurt master @a ~ ~ ~ 1 0.7
kill @s
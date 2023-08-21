#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
execute positioned ~3.993 ~ ~1.074 run function models_logic:summon/mutant_creeper
execute positioned ~-4.396 ~ ~1.769 run function models_logic:summon/mutant_creeper
execute positioned ~-4.645 ~ ~2.776 run function models_logic:summon/mutant_creeper
execute positioned ~0.316 ~ ~-2.239 run function models_logic:summon/mutant_creeper
execute positioned ~0.477 ~ ~-3.035 run function models_logic:summon/mutant_creeper
playsound minecraft:entity.creeper.hurt master @a ~ ~ ~ 1 0.7
kill @s
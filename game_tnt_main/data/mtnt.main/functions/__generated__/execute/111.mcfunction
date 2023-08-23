#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
execute positioned ~-4.057 ~ ~-4.667 run function models_logic:summon/mutant_creeper
execute positioned ~3.938 ~ ~-4.334 run function models_logic:summon/mutant_creeper
execute positioned ~-0.851 ~ ~2.233 run function models_logic:summon/mutant_creeper
execute positioned ~3.909 ~ ~1.545 run function models_logic:summon/mutant_creeper
execute positioned ~-4.948 ~ ~1.407 run function models_logic:summon/mutant_creeper
playsound minecraft:entity.creeper.hurt master @a ~ ~ ~ 1 0.7
kill @s
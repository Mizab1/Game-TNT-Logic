#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
execute positioned ~-0.511 ~ ~2.702 run function models_logic:summon/mutant_creeper
execute positioned ~2.833 ~ ~-4.363 run function models_logic:summon/mutant_creeper
execute positioned ~3.589 ~ ~4.958 run function models_logic:summon/mutant_creeper
execute positioned ~-4.411 ~ ~-0.494 run function models_logic:summon/mutant_creeper
execute positioned ~-4.528 ~ ~0.120 run function models_logic:summon/mutant_creeper
playsound minecraft:entity.creeper.hurt master @a ~ ~ ~ 1 0.7
kill @s
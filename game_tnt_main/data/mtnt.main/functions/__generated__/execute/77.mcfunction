#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
execute positioned ~4.202 ~ ~-2.059 run function models_logic:summon/mutant_creeper
execute positioned ~-3.510 ~ ~0.318 run function models_logic:summon/mutant_creeper
execute positioned ~-3.653 ~ ~-3.666 run function models_logic:summon/mutant_creeper
execute positioned ~2.942 ~ ~-2.638 run function models_logic:summon/mutant_creeper
execute positioned ~-2.581 ~ ~0.522 run function models_logic:summon/mutant_creeper
playsound minecraft:entity.creeper.hurt master @a ~ ~ ~ 1 0.7
kill @s
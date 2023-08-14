#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
execute positioned ~-2.550 ~ ~-0.628 run function models_logic:summon/mutant_creeper
execute positioned ~-1.203 ~ ~2.007 run function models_logic:summon/mutant_creeper
execute positioned ~-4.132 ~ ~-2.611 run function models_logic:summon/mutant_creeper
execute positioned ~-3.492 ~ ~1.811 run function models_logic:summon/mutant_creeper
execute positioned ~1.484 ~ ~-4.916 run function models_logic:summon/mutant_creeper
playsound minecraft:entity.creeper.hurt master @a ~ ~ ~ 1 0.7
kill @s
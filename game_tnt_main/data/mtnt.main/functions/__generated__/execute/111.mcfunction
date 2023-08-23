#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
execute positioned ~-3.757 ~ ~-2.506 run function models_logic:summon/mutant_creeper
execute positioned ~3.280 ~ ~-2.865 run function models_logic:summon/mutant_creeper
execute positioned ~-3.882 ~ ~-0.616 run function models_logic:summon/mutant_creeper
execute positioned ~0.664 ~ ~1.172 run function models_logic:summon/mutant_creeper
execute positioned ~-2.433 ~ ~1.750 run function models_logic:summon/mutant_creeper
playsound minecraft:entity.creeper.hurt master @a ~ ~ ~ 1 0.7
kill @s
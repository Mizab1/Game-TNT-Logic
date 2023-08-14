#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
execute positioned ~3.470 ~ ~2.282 run function models_logic:summon/mutant_creeper
execute positioned ~2.968 ~ ~-3.017 run function models_logic:summon/mutant_creeper
execute positioned ~0.714 ~ ~-0.831 run function models_logic:summon/mutant_creeper
execute positioned ~-3.452 ~ ~3.154 run function models_logic:summon/mutant_creeper
execute positioned ~-0.354 ~ ~-4.354 run function models_logic:summon/mutant_creeper
playsound minecraft:entity.creeper.hurt master @a ~ ~ ~ 1 0.7
kill @s
#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
execute positioned ~2.216 ~ ~-1.063 run function models_logic:summon/mutant_creeper
execute positioned ~0.986 ~ ~-1.596 run function models_logic:summon/mutant_creeper
execute positioned ~2.643 ~ ~-0.264 run function models_logic:summon/mutant_creeper
execute positioned ~-1.264 ~ ~2.463 run function models_logic:summon/mutant_creeper
execute positioned ~-3.932 ~ ~1.919 run function models_logic:summon/mutant_creeper
playsound minecraft:entity.creeper.hurt master @a ~ ~ ~ 1 0.7
kill @s
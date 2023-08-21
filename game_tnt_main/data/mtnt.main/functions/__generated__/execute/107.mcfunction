#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
execute positioned ~-0.924 ~ ~-4.216 run function models_logic:summon/mutant_creeper
execute positioned ~2.988 ~ ~-0.489 run function models_logic:summon/mutant_creeper
execute positioned ~2.579 ~ ~-2.255 run function models_logic:summon/mutant_creeper
execute positioned ~3.027 ~ ~1.132 run function models_logic:summon/mutant_creeper
execute positioned ~4.676 ~ ~2.233 run function models_logic:summon/mutant_creeper
playsound minecraft:entity.creeper.hurt master @a ~ ~ ~ 1 0.7
kill @s
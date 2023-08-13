#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
execute positioned ~4.164 ~ ~-0.233 run function models_logic:summon/mutant_creeper
execute positioned ~-4.720 ~ ~-4.563 run function models_logic:summon/mutant_creeper
execute positioned ~2.391 ~ ~1.165 run function models_logic:summon/mutant_creeper
execute positioned ~2.822 ~ ~3.834 run function models_logic:summon/mutant_creeper
execute positioned ~1.782 ~ ~-1.871 run function models_logic:summon/mutant_creeper
playsound minecraft:entity.creeper.hurt master @a ~ ~ ~ 1 0.7
kill @s
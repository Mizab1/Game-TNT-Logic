#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
execute positioned ~-2.556 ~ ~2.584 run function models_logic:summon/mutant_creeper
execute positioned ~-2.136 ~ ~-1.619 run function models_logic:summon/mutant_creeper
execute positioned ~-1.879 ~ ~-1.798 run function models_logic:summon/mutant_creeper
execute positioned ~0.493 ~ ~-3.968 run function models_logic:summon/mutant_creeper
execute positioned ~2.343 ~ ~2.933 run function models_logic:summon/mutant_creeper
playsound minecraft:entity.creeper.hurt master @a ~ ~ ~ 1 0.7
kill @s
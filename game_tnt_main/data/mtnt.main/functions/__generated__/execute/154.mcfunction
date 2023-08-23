#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
execute positioned ~-1.365 ~ ~4.336 run function models_logic:summon/pikachu
execute positioned ~3.638 ~ ~-1.259 run function models_logic:summon/pikachu
execute positioned ~-4.428 ~ ~-3.876 run function models_logic:summon/pikachu
particle poof ~ ~1 ~ 2 2 2 0.5 2000
playsound minecraft:sfx.pika master @a ~ ~ ~ 1 1
kill @s
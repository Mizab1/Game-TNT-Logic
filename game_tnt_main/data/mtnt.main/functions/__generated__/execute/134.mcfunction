#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
execute positioned ~4.561 ~ ~-4.299 run function models_logic:summon/pikachu
execute positioned ~-0.250 ~ ~4.589 run function models_logic:summon/pikachu
execute positioned ~0.473 ~ ~3.754 run function models_logic:summon/pikachu
particle poof ~ ~1 ~ 2 2 2 0.5 2000
playsound minecraft:sfx.pika master @a ~ ~ ~ 1 1
kill @s
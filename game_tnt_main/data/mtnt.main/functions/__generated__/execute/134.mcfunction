#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
execute positioned ~1.703 ~ ~2.845 run function models_logic:summon/pikachu
execute positioned ~2.693 ~ ~2.213 run function models_logic:summon/pikachu
execute positioned ~-1.325 ~ ~0.437 run function models_logic:summon/pikachu
particle poof ~ ~1 ~ 2 2 2 0.5 2000
playsound minecraft:sfx.pika master @a ~ ~ ~ 1 1
kill @s
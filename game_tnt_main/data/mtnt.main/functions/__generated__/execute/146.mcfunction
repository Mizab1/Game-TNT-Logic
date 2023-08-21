#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
execute positioned ~2.807 ~ ~0.629 run function models_logic:summon/pikachu
execute positioned ~0.925 ~ ~-3.882 run function models_logic:summon/pikachu
execute positioned ~0.585 ~ ~0.840 run function models_logic:summon/pikachu
particle poof ~ ~1 ~ 2 2 2 0.5 2000
playsound minecraft:sfx.pika master @a ~ ~ ~ 1 1
kill @s
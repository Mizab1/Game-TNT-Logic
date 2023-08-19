#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
execute positioned ~ ~1 ~ run function models_logic:summon/bowser
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 0.7
particle poof ~ ~ ~ 2 2 2 0.5 1000
tellraw @a {"text":"Bowser is spawned!", "color":"red"}
playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.8
kill @s
#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
function models_logic:summon/rainbow_red
function models_logic:summon/rainbow_red
particle dust 1 0 0 2 ~ ~1 ~ 2 2 2 1 500
kill @s
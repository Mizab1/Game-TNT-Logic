#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
playsound minecraft:entity.ender_dragon.shoot master @a ~ ~ ~ 1 0.5
particle minecraft:campfire_signal_smoke ~ ~ ~ 1 1 1 0.2 500
function models_logic:summon/rainbow_cyan
kill @s
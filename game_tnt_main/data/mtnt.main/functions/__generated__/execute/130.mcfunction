#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
function models_logic:summon/backdoor
particle poof ~ ~1 ~ 2 2 2 0.5 1000
tellraw @a {"text":"What's that Mob?!", "color":"red"}
playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.1
kill @s
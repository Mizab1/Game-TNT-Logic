#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
function mtnt.main:test
function models_logic:summon/huggy_wuggy
function models_logic:summon/huggy_wuggy
time set midnight
playsound minecraft:ambient.cave master @a ~ ~ ~ 1 1.5
tellraw @a {"text":"Oh No! Huggy Wuggy!?", "color":"gold"}
kill @s
#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
function models_logic:summon/huggy_wuggy
function models_logic:summon/huggy_wuggy
time set mid_night
playsound minecraft:ambient.cave master @a ~ ~ ~ 1 1.5
tellraw @a {"text":"Oh No! Huggy Wuggy!?", "color":"gold"}
kill @s
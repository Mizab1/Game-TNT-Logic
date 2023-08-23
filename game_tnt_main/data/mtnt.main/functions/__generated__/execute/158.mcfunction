#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.1 50
execute as @e[type=#aestd1:mobs, tag=!aj_mob, distance=..15] at @s run function mtnt.main:__generated__/execute/159
summon snowball ~ ~ ~ {Motion:[0.16,0.48,0.71]}
summon snowball ~ ~ ~ {Motion:[0.18,0.31,-0.07]}
summon snowball ~ ~ ~ {Motion:[0.62,0.49,-0.32]}
summon snowball ~ ~ ~ {Motion:[-0.12,0.34,-0.47]}
summon snowball ~ ~ ~ {Motion:[0.50,0.47,0.54]}
summon snowball ~ ~ ~ {Motion:[-0.19,0.35,-0.19]}
summon snowball ~ ~ ~ {Motion:[0.76,0.35,0.17]}
summon snowball ~ ~ ~ {Motion:[0.73,0.24,0.48]}
summon snowball ~ ~ ~ {Motion:[-0.29,0.24,-0.08]}
summon snowball ~ ~ ~ {Motion:[0.62,0.52,0.50]}
summon snowball ~ ~ ~ {Motion:[0.72,0.29,0.41]}
summon snowball ~ ~ ~ {Motion:[-0.23,0.31,-0.15]}
summon snowball ~ ~ ~ {Motion:[-0.07,0.41,-0.71]}
summon snowball ~ ~ ~ {Motion:[-0.67,0.24,-0.08]}
summon snowball ~ ~ ~ {Motion:[-0.63,0.39,0.01]}
summon snowball ~ ~ ~ {Motion:[0.76,0.59,0.25]}
summon snowball ~ ~ ~ {Motion:[-0.52,0.47,-0.17]}
summon snowball ~ ~ ~ {Motion:[0.13,0.49,-0.74]}
summon snowball ~ ~ ~ {Motion:[0.44,0.49,-0.51]}
summon snowball ~ ~ ~ {Motion:[0.60,0.37,-0.06]}
kill @s
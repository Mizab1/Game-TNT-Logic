#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.1 50
execute as @e[type=#aestd1:mobs, tag=!aj_mob, distance=..15] at @s run function mtnt.main:__generated__/execute/158
summon snowball ~ ~ ~ {Motion:[-0.13,0.23,0.54]}
summon snowball ~ ~ ~ {Motion:[-0.56,0.21,-0.28]}
summon snowball ~ ~ ~ {Motion:[-0.54,0.56,0.44]}
summon snowball ~ ~ ~ {Motion:[-0.20,0.20,0.79]}
summon snowball ~ ~ ~ {Motion:[-0.67,0.29,0.70]}
summon snowball ~ ~ ~ {Motion:[-0.47,0.32,-0.48]}
summon snowball ~ ~ ~ {Motion:[0.77,0.51,0.34]}
summon snowball ~ ~ ~ {Motion:[-0.62,0.33,0.23]}
summon snowball ~ ~ ~ {Motion:[0.73,0.42,-0.55]}
summon snowball ~ ~ ~ {Motion:[-0.72,0.51,0.48]}
summon snowball ~ ~ ~ {Motion:[-0.20,0.25,0.39]}
summon snowball ~ ~ ~ {Motion:[0.17,0.59,-0.46]}
summon snowball ~ ~ ~ {Motion:[0.05,0.51,-0.11]}
summon snowball ~ ~ ~ {Motion:[-0.09,0.25,-0.18]}
summon snowball ~ ~ ~ {Motion:[-0.10,0.46,-0.06]}
summon snowball ~ ~ ~ {Motion:[0.16,0.52,0.59]}
summon snowball ~ ~ ~ {Motion:[0.35,0.49,-0.22]}
summon snowball ~ ~ ~ {Motion:[-0.16,0.32,0.29]}
summon snowball ~ ~ ~ {Motion:[0.06,0.55,0.06]}
summon snowball ~ ~ ~ {Motion:[-0.18,0.49,-0.39]}
kill @s
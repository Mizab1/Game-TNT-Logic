#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.1 50
execute as @e[type=#aestd1:mobs, tag=!aj_mob, distance=..15] at @s run function mtnt.main:__generated__/execute/159
summon snowball ~ ~ ~ {Motion:[0.37,0.37,0.33]}
summon snowball ~ ~ ~ {Motion:[0.46,0.48,0.14]}
summon snowball ~ ~ ~ {Motion:[-0.56,0.46,0.20]}
summon snowball ~ ~ ~ {Motion:[0.45,0.49,0.05]}
summon snowball ~ ~ ~ {Motion:[-0.13,0.56,0.32]}
summon snowball ~ ~ ~ {Motion:[0.22,0.51,-0.53]}
summon snowball ~ ~ ~ {Motion:[-0.73,0.60,0.01]}
summon snowball ~ ~ ~ {Motion:[-0.22,0.45,-0.54]}
summon snowball ~ ~ ~ {Motion:[-0.74,0.54,-0.05]}
summon snowball ~ ~ ~ {Motion:[-0.43,0.22,0.77]}
summon snowball ~ ~ ~ {Motion:[0.59,0.59,-0.49]}
summon snowball ~ ~ ~ {Motion:[0.26,0.26,0.76]}
summon snowball ~ ~ ~ {Motion:[-0.38,0.48,0.42]}
summon snowball ~ ~ ~ {Motion:[-0.37,0.37,-0.78]}
summon snowball ~ ~ ~ {Motion:[-0.29,0.56,0.56]}
summon snowball ~ ~ ~ {Motion:[-0.09,0.24,0.57]}
summon snowball ~ ~ ~ {Motion:[-0.60,0.29,-0.09]}
summon snowball ~ ~ ~ {Motion:[0.18,0.38,-0.29]}
summon snowball ~ ~ ~ {Motion:[0.02,0.39,0.08]}
summon snowball ~ ~ ~ {Motion:[-0.07,0.23,0.45]}
kill @s
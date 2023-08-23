#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.1 50
execute as @e[type=#aestd1:mobs, tag=!aj_mob, distance=..15] at @s run function mtnt.main:__generated__/execute/158
summon snowball ~ ~ ~ {Motion:[0.23,0.46,-0.60]}
summon snowball ~ ~ ~ {Motion:[-0.14,0.26,0.39]}
summon snowball ~ ~ ~ {Motion:[-0.36,0.31,-0.65]}
summon snowball ~ ~ ~ {Motion:[-0.17,0.40,-0.45]}
summon snowball ~ ~ ~ {Motion:[-0.05,0.30,0.12]}
summon snowball ~ ~ ~ {Motion:[0.04,0.24,-0.21]}
summon snowball ~ ~ ~ {Motion:[0.55,0.23,-0.05]}
summon snowball ~ ~ ~ {Motion:[-0.06,0.45,0.31]}
summon snowball ~ ~ ~ {Motion:[0.67,0.33,-0.43]}
summon snowball ~ ~ ~ {Motion:[-0.78,0.37,0.58]}
summon snowball ~ ~ ~ {Motion:[-0.76,0.39,-0.44]}
summon snowball ~ ~ ~ {Motion:[-0.16,0.43,0.27]}
summon snowball ~ ~ ~ {Motion:[0.46,0.45,-0.07]}
summon snowball ~ ~ ~ {Motion:[0.27,0.38,0.32]}
summon snowball ~ ~ ~ {Motion:[-0.17,0.46,-0.39]}
summon snowball ~ ~ ~ {Motion:[-0.75,0.58,0.77]}
summon snowball ~ ~ ~ {Motion:[0.72,0.53,0.33]}
summon snowball ~ ~ ~ {Motion:[-0.02,0.36,-0.72]}
summon snowball ~ ~ ~ {Motion:[-0.77,0.49,0.59]}
summon snowball ~ ~ ~ {Motion:[0.30,0.21,0.54]}
kill @s
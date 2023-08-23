#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.1 50
execute as @e[type=#aestd1:mobs, tag=!aj_mob, distance=..15] at @s run function mtnt.main:__generated__/execute/159
summon snowball ~ ~ ~ {Motion:[-0.62,0.57,0.32]}
summon snowball ~ ~ ~ {Motion:[-0.07,0.35,0.64]}
summon snowball ~ ~ ~ {Motion:[0.45,0.29,-0.10]}
summon snowball ~ ~ ~ {Motion:[-0.50,0.43,0.70]}
summon snowball ~ ~ ~ {Motion:[-0.36,0.20,0.10]}
summon snowball ~ ~ ~ {Motion:[0.41,0.51,-0.58]}
summon snowball ~ ~ ~ {Motion:[-0.58,0.48,-0.02]}
summon snowball ~ ~ ~ {Motion:[-0.60,0.45,-0.67]}
summon snowball ~ ~ ~ {Motion:[0.04,0.21,-0.03]}
summon snowball ~ ~ ~ {Motion:[0.56,0.54,-0.70]}
summon snowball ~ ~ ~ {Motion:[-0.06,0.26,-0.18]}
summon snowball ~ ~ ~ {Motion:[-0.77,0.53,-0.78]}
summon snowball ~ ~ ~ {Motion:[-0.33,0.53,-0.64]}
summon snowball ~ ~ ~ {Motion:[0.27,0.33,0.75]}
summon snowball ~ ~ ~ {Motion:[0.44,0.23,0.46]}
summon snowball ~ ~ ~ {Motion:[0.49,0.59,-0.32]}
summon snowball ~ ~ ~ {Motion:[0.66,0.43,-0.53]}
summon snowball ~ ~ ~ {Motion:[0.63,0.31,-0.09]}
summon snowball ~ ~ ~ {Motion:[-0.40,0.33,-0.00]}
summon snowball ~ ~ ~ {Motion:[-0.31,0.44,-0.77]}
kill @s
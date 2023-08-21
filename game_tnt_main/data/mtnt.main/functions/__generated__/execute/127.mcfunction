#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
loot spawn ~ ~1 ~ loot minecraft:mystery_tnt
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.1 50
playsound minecraft:item.goat_horn.sound.1 master @a ~ ~ ~ 1 2
kill @s
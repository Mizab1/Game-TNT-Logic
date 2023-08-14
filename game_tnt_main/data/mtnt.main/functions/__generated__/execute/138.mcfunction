#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.1 50
summon item ~ ~ ~ {Motion:[0.1, 0.3, 0.2], Item:{id:"minecraft:snowball",Count:16b,tag:{display:{Name:'{"text":"Pokeball","color":"gold","italic":false}'},pokeball:1b}}}
kill @s
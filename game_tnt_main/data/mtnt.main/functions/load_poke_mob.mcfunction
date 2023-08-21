#built using mc-build (https://github.com/mc-build/mc-build)

tp @e[type=#aestd1:mobs, tag=catched, limit=1] ~ ~ ~
particle poof ~ ~ ~ 1 1 1 0.5 20
playsound minecraft:item.trident.throw master @a ~ ~ ~ 0.5 1.5
kill @s
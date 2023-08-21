#built using mc-build (https://github.com/mc-build/mc-build)

execute as @e[type=#aestd1:mobs, tag=!aj_mob, distance=..3, limit=1] at @s run function mtnt.main:__generated__/execute/13
particle poof ~ ~ ~ 1 1 1 0.5 1000
playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 1 1.8
summon item ~ ~ ~ {Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Catched Pokemon","color":"gold","italic":false}'},loaded_pokeball:1b,Enchantments:[{}]}}}
kill @s
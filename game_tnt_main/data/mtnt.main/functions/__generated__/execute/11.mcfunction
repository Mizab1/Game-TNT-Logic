#built using mc-build (https://github.com/mc-build/mc-build)

effect give @e[type=#minecraft:passive, distance=..3] invisibility 5 0 true
particle poof ~ ~ ~ 1 1 1 0.5 1000
playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 1 1.8
summon item ~ ~ ~ {Item:{id:"minecraft:heart_of_the_sea",Count:1b,tag:{display:{Name:'{"text":"Catched Pokemon","color":"gold","italic":false}'},Enchantments:[{}]}}}
kill @s
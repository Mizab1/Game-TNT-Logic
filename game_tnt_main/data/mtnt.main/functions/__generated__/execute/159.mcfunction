#built using mc-build (https://github.com/mc-build/mc-build)

tp @s 208 242 -85
data merge entity @s {PersistenceRequired:1b}
tag @s add catched
particle poof ~ ~ ~ 1 1 1 0.5 100
playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 1 1.8
summon item ~ ~ ~ {Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Catched Pokemon","color":"gold","italic":false}'},loaded_pokeball:1b,Enchantments:[{}]}}}
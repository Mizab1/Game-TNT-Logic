#built using mc-build (https://github.com/mc-build/mc-build)

effect give @a[tag=!in_darkness] night_vision 100 0 true
execute as @a[tag=in_sandstorm] at @s run function mtnt.main:__generated__/execute/8
execute as @e[type=block_display, tag=darkness_radius] at @s if entity @a[distance=..5] run function mtnt.main:__generated__/execute/9
execute as @e[type=llama, tag=loot_llama] at @s run function mtnt.main:__generated__/execute/10
execute as @e[type=snowball] at @s run function mtnt.main:__generated__/execute/15
execute as @e[type=armor_stand, tag=huggy_wuggy_plushes] at @s if entity @a[distance=..2] run function mtnt.main:__generated__/execute/16
execute as @e[type=#animated_java:root,tag=aj.fnaf_bonnie.root] at @s if entity @a[distance=..2] run function mtnt.main:__generated__/execute/17
execute as @e[type=#animated_java:root,tag=aj.fnaf_freddy.root] at @s if entity @a[distance=..2] run function mtnt.main:__generated__/execute/19
execute at @e[type=fireball] run particle flame ~ ~ ~ 0.3 0.3 0.3 0 10
kill @e[type=item, nbt={Item:{id:"minecraft:porkchop"}}]
execute as @a at @s if score @s drank_potion matches 1.. run function mtnt.main:__generated__/execute/22
execute as @a at @s if score @s ate_mushroom matches 1.. run function mtnt.main:__generated__/execute/23
execute as @e[type=endermite, tag=tnt.endermite] at @s run function mtnt.main:__generated__/execute/24
execute as @e[type=armor_stand, tag=tnt.as] at @s run function mtnt.main:__generated__/execute/46
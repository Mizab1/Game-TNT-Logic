#built using mc-build (https://github.com/mc-build/mc-build)

effect give @a[tag=!in_darkness] night_vision 100 0 true
execute as @a[tag=in_sandstorm] at @s run function mtnt.main:__generated__/execute/4
execute as @e[type=block_display, tag=darkness_radius] at @s if entity @a[distance=..5] run function mtnt.main:__generated__/execute/5
execute as @e[type=llama, tag=loot_llama] at @s run function mtnt.main:__generated__/execute/6
execute as @e[type=snowball] at @s if data entity @s Item.tag.pokeball if entity @e[type=#minecraft:passive, distance=..3] run function mtnt.main:__generated__/execute/9
execute as @e[type=endermite, tag=tnt.endermite] at @s run function mtnt.main:__generated__/execute/10
execute as @e[type=armor_stand, tag=tnt.as] at @s run function mtnt.main:__generated__/execute/32
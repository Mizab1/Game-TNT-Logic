#built using mc-build (https://github.com/mc-build/mc-build)

effect give @a[tag=!in_darkness] night_vision 100 0 true
execute as @a[tag=in_sandstorm] at @s run function mtnt.main:__generated__/execute/4
execute as @e[type=block_display, tag=darkness_radius] at @s if entity @a[distance=..5] run function mtnt.main:__generated__/execute/5
execute as @e[type=llama, tag=loot_llama] at @s run function mtnt.main:__generated__/execute/6
execute as @e[type=snowball] at @s run function mtnt.main:__generated__/execute/11
execute as @e[type=armor_stand, tag=huggy_wuggy_plushes] at @s if entity @a[distance=..2] run function mtnt.main:__generated__/execute/14
execute as @e[type=#animated_java:root,tag=aj.fnaf_bonnie.root] at @s if entity @a[distance=..2] run function mtnt.main:__generated__/execute/15
execute as @e[type=#animated_java:root,tag=aj.fnaf_freddy.root] at @s if entity @a[distance=..2] run function mtnt.main:__generated__/execute/17
execute at @e[type=fireball] run particle flame ~ ~ ~ 0.3 0.3 0.3 0 10
execute as @e[type=endermite, tag=tnt.endermite] at @s run function mtnt.main:__generated__/execute/20
execute as @e[type=armor_stand, tag=tnt.as] at @s run function mtnt.main:__generated__/execute/42
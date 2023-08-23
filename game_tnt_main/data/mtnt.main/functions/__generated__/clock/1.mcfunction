#built using mc-build (https://github.com/mc-build/mc-build)

schedule function mtnt.main:__generated__/clock/1 30t
execute at @e[type=item_display, tag=storm] as @a[distance=15..] run effect give @s[distance=10..] instant_damage 1 0 true
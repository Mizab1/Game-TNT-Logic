#built using mc-build (https://github.com/mc-build/mc-build)

schedule function mtnt.main:__generated__/clock/0 30t
scoreboard players set #execute LANG_MC_INTERNAL 0
execute if score acid_rain private matches 1 run function mtnt.main:__generated__/conditional/0
execute at @e[type=item_display, tag=storm] as @a[distance=15..] run effect give @s[distance=10..] instant_damage 1 0 true
#built using mc-build (https://github.com/mc-build/mc-build)

summon item_display ~ ~0.5 ~ {Tags:["emergency_meeting_anchor"],item:{id:"minecraft:wooden_hoe",Count:1b,tag:{CustomModelData:111002}}}
title @a title {"text":"\uEff1"}
kill @e[type=tnt, distance=..0.5]
execute as @a at @s run playsound minecraft:sfx.meeting master @a
schedule function mtnt.main:__generated__/schedule/1 3s replace
kill @s
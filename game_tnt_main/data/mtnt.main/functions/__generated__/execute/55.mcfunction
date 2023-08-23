#built using mc-build (https://github.com/mc-build/mc-build)

execute as @a at @s run playsound minecraft:sfx.meeting master @a
title @a times 20 60 20
title @a title {"text":"\uEff1"}
kill @e[type=tnt, distance=..0.5]
schedule function mtnt.main:__generated__/schedule/2 3s replace
kill @s
#built using mc-build (https://github.com/mc-build/mc-build)

spreadplayers 193 -61 2 5 true @e[type=#aestd1:living_base, tag=!aj_mob, tag=!tp_ignore]
summon marker 193 256 -61 {Tags:["emergency_meeting_anchor"]}
execute as @e[type=marker, tag=emergency_meeting_anchor] at @s run function mtnt.main:__generated__/execute/57
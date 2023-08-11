#built using mc-build (https://github.com/mc-build/mc-build)

execute at @a run function internal:__generated__/execute/8
schedule function internal:__generated__/schedule/1 35t append
schedule function internal:__generated__/schedule/2 75t append
execute as @e[type=#models_logic:aj_mobs, tag=rainbow_red] at @s run summon armor_stand ~ ~3 ~ {Rotation:[0f,-60f],NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["missile"],Pose:{Head:[-20f,0f,1f]},ArmorItems:[{},{},{},{id:"minecraft:blue_dye",Count:1b}]}
execute as @e[type=armor_stand,tag=missile] at @e[tag=cp.lead] run tp @s ~ ~ ~ ~ -60
schedule function internal:__generated__/schedule/3 35t append
schedule function internal:__generated__/schedule/4 75t append
schedule function internal:__generated__/schedule/5 50t append
schedule function internal:__generated__/schedule/6 76t append
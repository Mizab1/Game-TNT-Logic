#built using mc-build (https://github.com/mc-build/mc-build)

execute as @e[type=#models_logic:aj_mobs, tag=rainbow_red] at @s run summon armor_stand ~ ~3 ~ {Rotation:[0f,-60f],NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["missile"],Pose:{Head:[-20f,0f,1f]},ArmorItems:[{},{},{},{id:"minecraft:blue_dye",Count:1b}]}
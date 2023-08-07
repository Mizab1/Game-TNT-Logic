#built using mc-build (https://github.com/mc-build/mc-build)

summon item_display ~ ~ ~ {item_display:"ground",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[20f,20f,20f]},item:{id:"minecraft:wooden_hoe",Count:1b,tag:{CustomModelData:111010}}}
tellraw @a {"text":"Storm is nearby the TNT!"}
kill @s
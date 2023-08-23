#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon item_display ~ ~ ~ {Tags:["storm"], view_range:100f, item_display:"ground",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[20f,20f,20f]},item:{id:"minecraft:wooden_hoe",Count:1b,tag:{CustomModelData:111001}}}
tellraw @a {"text":"Storm is nearby the TNT! Get inside the circle", "color":"red"}
kill @s
schedule function mtnt.main:__generated__/schedule/3 20s replace
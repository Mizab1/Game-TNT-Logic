#built using mc-build (https://github.com/mc-build/mc-build)

summon block_display ~ ~ ~ {Tags:["darkness_radius"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-5f,-3f,-5f],scale:[10f,10f,10f]},block_state:{Name:"minecraft:black_concrete"}}
execute at @e[type=block_display, tag=darkness_radius] run playsound minecraft:music_disc.mellohi master @a ~ ~ ~
kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
execute positioned ~-5 ~-1 ~-5 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~-5 ~-1 ~-4 run fill ~ ~ ~ ~ ~ ~ brown_terracotta replace #mtnt.main:all_but_air
execute positioned ~-5 ~-1 ~-3 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~-5 ~-1 ~-2 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~-5 ~-1 ~-1 run fill ~ ~ ~ ~ ~ ~ purple_terracotta replace #mtnt.main:all_but_air
execute positioned ~-5 ~-1 ~0 run fill ~ ~ ~ ~ ~ ~ brown_terracotta replace #mtnt.main:all_but_air
execute positioned ~-5 ~-1 ~1 run fill ~ ~ ~ ~ ~ ~ brown_terracotta replace #mtnt.main:all_but_air
execute positioned ~-5 ~-1 ~2 run fill ~ ~ ~ ~ ~ ~ purple_terracotta replace #mtnt.main:all_but_air
execute positioned ~-5 ~-1 ~3 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~-5 ~-1 ~4 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~-5 ~-1 ~5 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~-4 ~-1 ~-5 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~-4 ~-1 ~-4 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~-4 ~-1 ~-3 run fill ~ ~ ~ ~ ~ ~ brown_terracotta replace #mtnt.main:all_but_air
execute positioned ~-4 ~-1 ~-2 run fill ~ ~ ~ ~ ~ ~ brown_terracotta replace #mtnt.main:all_but_air
execute positioned ~-4 ~-1 ~-1 run fill ~ ~ ~ ~ ~ ~ purple_terracotta replace #mtnt.main:all_but_air
execute positioned ~-4 ~-1 ~0 run fill ~ ~ ~ ~ ~ ~ purple_terracotta replace #mtnt.main:all_but_air
execute positioned ~-4 ~-1 ~1 run fill ~ ~ ~ ~ ~ ~ brown_terracotta replace #mtnt.main:all_but_air
execute positioned ~-4 ~-1 ~2 run fill ~ ~ ~ ~ ~ ~ brown_terracotta replace #mtnt.main:all_but_air
execute positioned ~-4 ~-1 ~3 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~-4 ~-1 ~4 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~-4 ~-1 ~5 run fill ~ ~ ~ ~ ~ ~ purple_terracotta replace #mtnt.main:all_but_air
execute positioned ~-3 ~-1 ~-5 run fill ~ ~ ~ ~ ~ ~ brown_terracotta replace #mtnt.main:all_but_air
execute positioned ~-3 ~-1 ~-4 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~-3 ~-1 ~-3 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~-3 ~-1 ~-2 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~-3 ~-1 ~-1 run fill ~ ~ ~ ~ ~ ~ brown_terracotta replace #mtnt.main:all_but_air
execute positioned ~-3 ~-1 ~0 run fill ~ ~ ~ ~ ~ ~ purple_terracotta replace #mtnt.main:all_but_air
execute positioned ~-3 ~-1 ~1 run fill ~ ~ ~ ~ ~ ~ purple_terracotta replace #mtnt.main:all_but_air
execute positioned ~-3 ~-1 ~2 run fill ~ ~ ~ ~ ~ ~ purple_terracotta replace #mtnt.main:all_but_air
execute positioned ~-3 ~-1 ~3 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~-3 ~-1 ~4 run fill ~ ~ ~ ~ ~ ~ brown_terracotta replace #mtnt.main:all_but_air
execute positioned ~-3 ~-1 ~5 run fill ~ ~ ~ ~ ~ ~ brown_terracotta replace #mtnt.main:all_but_air
execute positioned ~-2 ~-1 ~-5 run fill ~ ~ ~ ~ ~ ~ purple_terracotta replace #mtnt.main:all_but_air
execute positioned ~-2 ~-1 ~-4 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~-2 ~-1 ~-3 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~-2 ~-1 ~-2 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~-2 ~-1 ~-1 run fill ~ ~ ~ ~ ~ ~ purple_terracotta replace #mtnt.main:all_but_air
execute positioned ~-2 ~-1 ~0 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~-2 ~-1 ~1 run fill ~ ~ ~ ~ ~ ~ purple_terracotta replace #mtnt.main:all_but_air
execute positioned ~-2 ~-1 ~2 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~-2 ~-1 ~3 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~-2 ~-1 ~4 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~-2 ~-1 ~5 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~-1 ~-1 ~-5 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~-1 ~-1 ~-4 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~-1 ~-1 ~-3 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~-1 ~-1 ~-2 run fill ~ ~ ~ ~ ~ ~ purple_terracotta replace #mtnt.main:all_but_air
execute positioned ~-1 ~-1 ~-1 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~-1 ~-1 ~0 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~-1 ~-1 ~1 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~-1 ~-1 ~2 run fill ~ ~ ~ ~ ~ ~ brown_terracotta replace #mtnt.main:all_but_air
execute positioned ~-1 ~-1 ~3 run fill ~ ~ ~ ~ ~ ~ purple_terracotta replace #mtnt.main:all_but_air
execute positioned ~-1 ~-1 ~4 run fill ~ ~ ~ ~ ~ ~ purple_terracotta replace #mtnt.main:all_but_air
execute positioned ~-1 ~-1 ~5 run fill ~ ~ ~ ~ ~ ~ purple_terracotta replace #mtnt.main:all_but_air
execute positioned ~0 ~-1 ~-5 run fill ~ ~ ~ ~ ~ ~ brown_terracotta replace #mtnt.main:all_but_air
execute positioned ~0 ~-1 ~-4 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~0 ~-1 ~-3 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~0 ~-1 ~-2 run fill ~ ~ ~ ~ ~ ~ brown_terracotta replace #mtnt.main:all_but_air
execute positioned ~0 ~-1 ~-1 run fill ~ ~ ~ ~ ~ ~ brown_terracotta replace #mtnt.main:all_but_air
execute positioned ~0 ~-1 ~0 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~0 ~-1 ~1 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~0 ~-1 ~2 run fill ~ ~ ~ ~ ~ ~ brown_terracotta replace #mtnt.main:all_but_air
execute positioned ~0 ~-1 ~3 run fill ~ ~ ~ ~ ~ ~ brown_terracotta replace #mtnt.main:all_but_air
execute positioned ~0 ~-1 ~4 run fill ~ ~ ~ ~ ~ ~ purple_terracotta replace #mtnt.main:all_but_air
execute positioned ~0 ~-1 ~5 run fill ~ ~ ~ ~ ~ ~ brown_terracotta replace #mtnt.main:all_but_air
execute positioned ~1 ~-1 ~-5 run fill ~ ~ ~ ~ ~ ~ brown_terracotta replace #mtnt.main:all_but_air
execute positioned ~1 ~-1 ~-4 run fill ~ ~ ~ ~ ~ ~ brown_terracotta replace #mtnt.main:all_but_air
execute positioned ~1 ~-1 ~-3 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~1 ~-1 ~-2 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~1 ~-1 ~-1 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~1 ~-1 ~0 run fill ~ ~ ~ ~ ~ ~ brown_terracotta replace #mtnt.main:all_but_air
execute positioned ~1 ~-1 ~1 run fill ~ ~ ~ ~ ~ ~ brown_terracotta replace #mtnt.main:all_but_air
execute positioned ~1 ~-1 ~2 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~1 ~-1 ~3 run fill ~ ~ ~ ~ ~ ~ purple_terracotta replace #mtnt.main:all_but_air
execute positioned ~1 ~-1 ~4 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~1 ~-1 ~5 run fill ~ ~ ~ ~ ~ ~ brown_terracotta replace #mtnt.main:all_but_air
execute positioned ~2 ~-1 ~-5 run fill ~ ~ ~ ~ ~ ~ purple_terracotta replace #mtnt.main:all_but_air
execute positioned ~2 ~-1 ~-4 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~2 ~-1 ~-3 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~2 ~-1 ~-2 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~2 ~-1 ~-1 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~2 ~-1 ~0 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~2 ~-1 ~1 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~2 ~-1 ~2 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~2 ~-1 ~3 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~2 ~-1 ~4 run fill ~ ~ ~ ~ ~ ~ brown_terracotta replace #mtnt.main:all_but_air
execute positioned ~2 ~-1 ~5 run fill ~ ~ ~ ~ ~ ~ purple_terracotta replace #mtnt.main:all_but_air
execute positioned ~3 ~-1 ~-5 run fill ~ ~ ~ ~ ~ ~ brown_terracotta replace #mtnt.main:all_but_air
execute positioned ~3 ~-1 ~-4 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~3 ~-1 ~-3 run fill ~ ~ ~ ~ ~ ~ brown_terracotta replace #mtnt.main:all_but_air
execute positioned ~3 ~-1 ~-2 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~3 ~-1 ~-1 run fill ~ ~ ~ ~ ~ ~ purple_terracotta replace #mtnt.main:all_but_air
execute positioned ~3 ~-1 ~0 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~3 ~-1 ~1 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~3 ~-1 ~2 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~3 ~-1 ~3 run fill ~ ~ ~ ~ ~ ~ purple_terracotta replace #mtnt.main:all_but_air
execute positioned ~3 ~-1 ~4 run fill ~ ~ ~ ~ ~ ~ purple_terracotta replace #mtnt.main:all_but_air
execute positioned ~3 ~-1 ~5 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~4 ~-1 ~-5 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~4 ~-1 ~-4 run fill ~ ~ ~ ~ ~ ~ brown_terracotta replace #mtnt.main:all_but_air
execute positioned ~4 ~-1 ~-3 run fill ~ ~ ~ ~ ~ ~ brown_terracotta replace #mtnt.main:all_but_air
execute positioned ~4 ~-1 ~-2 run fill ~ ~ ~ ~ ~ ~ purple_terracotta replace #mtnt.main:all_but_air
execute positioned ~4 ~-1 ~-1 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~4 ~-1 ~0 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~4 ~-1 ~1 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~4 ~-1 ~2 run fill ~ ~ ~ ~ ~ ~ brown_terracotta replace #mtnt.main:all_but_air
execute positioned ~4 ~-1 ~3 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~4 ~-1 ~4 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~4 ~-1 ~5 run fill ~ ~ ~ ~ ~ ~ brown_terracotta replace #mtnt.main:all_but_air
execute positioned ~5 ~-1 ~-5 run fill ~ ~ ~ ~ ~ ~ brown_terracotta replace #mtnt.main:all_but_air
execute positioned ~5 ~-1 ~-4 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~5 ~-1 ~-3 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~5 ~-1 ~-2 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~5 ~-1 ~-1 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~5 ~-1 ~0 run fill ~ ~ ~ ~ ~ ~ cyan_terracotta replace #mtnt.main:all_but_air
execute positioned ~5 ~-1 ~1 run fill ~ ~ ~ ~ ~ ~ purple_terracotta replace #mtnt.main:all_but_air
execute positioned ~5 ~-1 ~2 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~5 ~-1 ~3 run fill ~ ~ ~ ~ ~ ~ purple_terracotta replace #mtnt.main:all_but_air
execute positioned ~5 ~-1 ~4 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~5 ~-1 ~5 run fill ~ ~ ~ ~ ~ ~ gray_terracotta replace #mtnt.main:all_but_air
execute positioned ~2.773 ~ ~-2.954 rotated ~10.411 0 run function animated_java:fnaf_freddy/summon
execute positioned ~-2.972 ~ ~-1.072 rotated ~-39.919 0 run function animated_java:fnaf_bonnie/summon
execute positioned ~0.152 ~ ~-0.524 rotated ~20.466 0 run function animated_java:fnaf_freddy/summon
execute positioned ~3.907 ~ ~-1.692 rotated ~34.139 0 run function animated_java:fnaf_bonnie/summon
execute positioned ~4.828 ~ ~-4.780 rotated ~-33.853 0 run function animated_java:fnaf_freddy/summon
execute positioned ~-1.443 ~ ~-1.730 rotated ~26.109 0 run function animated_java:fnaf_bonnie/summon
execute as @e[type=#animated_java:root,tag=aj.fnaf_freddy.root, distance=..15] run function animated_java:fnaf_freddy/animations/animation.freddy_fazbear.idle_on/play
execute as @e[type=#animated_java:root,tag=aj.fnaf_bonnie.root, distance=..15] run function animated_java:fnaf_bonnie/animations/animation.bonnie.idle_on/play
kill @s
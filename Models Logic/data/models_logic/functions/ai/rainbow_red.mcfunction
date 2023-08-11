#> Model
execute unless entity @e[type=item_display, distance=..1,tag=aj.rainbow_red.root,limit=1,sort=nearest] run function animated_java:rainbow_red/summon
execute as @e[type=item_display, distance=..1,tag=aj.rainbow_red.root,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ 0

#> Walk
function models_logic:check_walk
execute if score @s moving matches 1 as @e[distance=..1,tag=aj.rainbow_red.root,limit=1,sort=nearest] run function animated_java:rainbow_red/animations/animation.yg_red.general/pause
execute if score @s moving matches 1 as @e[distance=..1,tag=aj.rainbow_red.root,limit=1,sort=nearest] run function animated_java:rainbow_red/animations/animation.yg_red.move/resume 
execute if score @s moving matches 0 as @e[distance=..1,tag=aj.rainbow_red.root,limit=1,sort=nearest] run function animated_java:rainbow_red/animations/animation.yg_red.move/pause
execute if score @s moving matches 0 as @e[distance=..1,tag=aj.rainbow_red.root,limit=1,sort=nearest] run function animated_java:rainbow_red/animations/animation.yg_red.general/resume 

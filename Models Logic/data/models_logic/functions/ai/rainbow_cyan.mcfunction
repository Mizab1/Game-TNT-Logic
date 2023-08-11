#> Model
execute unless entity @e[type=item_display, distance=..1,tag=aj.rainbow_cyan.root,limit=1,sort=nearest] run function animated_java:rainbow_cyan/summon
execute as @e[type=item_display, distance=..1,tag=aj.rainbow_cyan.root,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ 0

#> Walk
function models_logic:check_walk
execute if score @s moving matches 1 as @e[distance=..1,tag=aj.rainbow_cyan.root,limit=1,sort=nearest] run function animated_java:rainbow_cyan/animations/animation.yg_cyan.general/pause
execute if score @s moving matches 1 as @e[distance=..1,tag=aj.rainbow_cyan.root,limit=1,sort=nearest] run function animated_java:rainbow_cyan/animations/animation.yg_cyan.move/resume 
execute if score @s moving matches 0 as @e[distance=..1,tag=aj.rainbow_cyan.root,limit=1,sort=nearest] run function animated_java:rainbow_cyan/animations/animation.yg_cyan.move/pause
execute if score @s moving matches 0 as @e[distance=..1,tag=aj.rainbow_cyan.root,limit=1,sort=nearest] run function animated_java:rainbow_cyan/animations/animation.yg_cyan.general/resume 

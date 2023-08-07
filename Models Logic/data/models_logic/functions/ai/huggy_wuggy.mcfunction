#> Model
execute unless entity @e[type=item_display, distance=..1,tag=aj.huggy_wuggy.root,limit=1,sort=nearest] run function animated_java:huggy_wuggy/summon
execute as @e[type=item_display, distance=..1,tag=aj.huggy_wuggy.root,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ 0

#> Walk
function models_logic:check_walk
execute if score @s moving matches 1 as @e[distance=..1,tag=aj.huggy_wuggy.root,limit=1,sort=nearest] run function animated_java:huggy_wuggy/animations/animation.huggy_wuggy_bd.passive_mode/pause
execute if score @s moving matches 1 as @e[distance=..1,tag=aj.huggy_wuggy.root,limit=1,sort=nearest] run function animated_java:huggy_wuggy/animations/animation.huggy_wuggy_bd.moving_leg/resume 
execute if score @s moving matches 0 as @e[distance=..1,tag=aj.huggy_wuggy.root,limit=1,sort=nearest] run function animated_java:huggy_wuggy/animations/animation.huggy_wuggy_bd.moving_leg/pause
execute if score @s moving matches 0 as @e[distance=..1,tag=aj.huggy_wuggy.root,limit=1,sort=nearest] run function animated_java:huggy_wuggy/animations/animation.huggy_wuggy_bd.passive_mode/resume 

#> Model
execute unless entity @e[type=item_display, distance=..1,tag=aj.penguin.root,limit=1,sort=nearest] run function animated_java:penguin/summon
execute as @e[type=item_display, distance=..1,tag=aj.penguin.root,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ 0

#> Walk
function models_logic:check_walk
execute if score @s moving matches 1 as @e[distance=..1,tag=aj.penguin.root,limit=1,sort=nearest] run function animated_java:penguin/animations/animation.penguin_v2.idle/pause
execute if score @s moving matches 1 as @e[distance=..1,tag=aj.penguin.root,limit=1,sort=nearest] run function animated_java:penguin/animations/animation.penguin_v2.walk/resume
execute if score @s moving matches 0 as @e[distance=..1,tag=aj.penguin.root,limit=1,sort=nearest] run function animated_java:penguin/animations/animation.penguin_v2.walk/stop
execute if score @s moving matches 0 as @e[distance=..1,tag=aj.penguin.root,limit=1,sort=nearest] run function animated_java:penguin/animations/animation.penguin_v2.idle/play 


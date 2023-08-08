#> Model
execute unless entity @e[type=item_display, distance=..1,tag=aj.backdoor.root,limit=1,sort=nearest] run function animated_java:backdoor/summon
execute as @e[type=item_display, distance=..1,tag=aj.backdoor.root,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ 0

#> Walk
function models_logic:check_walk
execute if score @s moving matches 1 as @e[distance=..1,tag=aj.backdoor.root,limit=1,sort=nearest] run function animated_java:backdoor/animations/animation.mystery_bacteria.general/pause
execute if score @s moving matches 1 as @e[distance=..1,tag=aj.backdoor.root,limit=1,sort=nearest] run function animated_java:backdoor/animations/animation.mystery_bacteria.walk/resume 
execute if score @s moving matches 0 as @e[distance=..1,tag=aj.backdoor.root,limit=1,sort=nearest] run function animated_java:backdoor/animations/animation.mystery_bacteria.walk/stop
execute if score @s moving matches 0 as @e[distance=..1,tag=aj.backdoor.root,limit=1,sort=nearest] run function animated_java:backdoor/animations/animation.mystery_bacteria.general/resume 

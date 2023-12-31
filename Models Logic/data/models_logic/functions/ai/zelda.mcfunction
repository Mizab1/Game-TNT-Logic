#> Model
execute unless entity @e[type=item_display, distance=..1,tag=aj.zelda.root,limit=1,sort=nearest] run function animated_java:zelda/summon
execute as @e[type=item_display, distance=..1,tag=aj.zelda.root,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ 0

#> Walk
function models_logic:check_walk
execute if score @s moving matches 1 as @e[distance=..1,tag=aj.zelda.root,limit=1,sort=nearest] run function animated_java:zelda/animations/general/pause
execute if score @s moving matches 1 as @e[distance=..1,tag=aj.zelda.root,limit=1,sort=nearest] run function animated_java:zelda/animations/walk/resume
execute if score @s moving matches 0 as @e[distance=..1,tag=aj.zelda.root,limit=1,sort=nearest] run function animated_java:zelda/animations/walk/pause
execute if score @s moving matches 0 as @e[distance=..1,tag=aj.zelda.root,limit=1,sort=nearest] run function animated_java:zelda/animations/general/resume

#> Model
execute unless entity @e[type=item_display, distance=..1,tag=aj.huggy_wuggy.root,limit=1,sort=nearest] run function animated_java:huggy_wuggy/summon
execute as @e[type=item_display, distance=..1,tag=aj.huggy_wuggy.root,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ 0

#> Walk
function models_logic:check_walk
execute if score @s moving matches 1 as @e[distance=..1,tag=aj.huggy_wuggy.root,limit=1,sort=nearest] run function animated_java:huggy_wuggy/animations/animation.huggy_wuggy_bd.passive_mode/pause
execute if score @s moving matches 1 as @e[distance=..1,tag=aj.huggy_wuggy.root,limit=1,sort=nearest] run function animated_java:huggy_wuggy/animations/animation.huggy_wuggy_bd.moving_leg/resume 
execute if score @s moving matches 0 as @e[distance=..1,tag=aj.huggy_wuggy.root,limit=1,sort=nearest] run function animated_java:huggy_wuggy/animations/animation.huggy_wuggy_bd.moving_leg/pause
execute if score @s moving matches 0 as @e[distance=..1,tag=aj.huggy_wuggy.root,limit=1,sort=nearest] run function animated_java:huggy_wuggy/animations/animation.huggy_wuggy_bd.passive_mode/resume 

#> Attack
execute unless score @s attacktime matches 0 run scoreboard players remove @s attacktime 1
execute if entity @e[type=#models_logic:target, distance=..2] if score @s attacktime matches 0 as @e[distance=..1,tag=aj.huggy_wuggy.root,limit=1,sort=nearest] run function animated_java:huggy_wuggy/animations/animation.huggy_wuggy_bd.attack/play
# execute if entity @e[type=#models_logic:target, distance=..2] if score @s attacktime matches 10 run damage @e[type=#models_logic:target, distance=..2,limit=1] 4 mob_attack
execute if entity @e[type=#models_logic:target, distance=..2] if score @s attacktime matches 0 run scoreboard players set @s attacktime 20
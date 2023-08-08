#> Model
execute unless entity @e[type=item_display, distance=..1,tag=aj.mutant_creeper.root,limit=1,sort=nearest] run function animated_java:mutant_creeper/summon
execute as @e[type=item_display, distance=..1,tag=aj.mutant_creeper.root,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ 0

#> Walk
function models_logic:check_walk
execute if score @s moving matches 1 as @e[distance=..1,tag=aj.mutant_creeper.root,limit=1,sort=nearest] run function animated_java:mutant_creeper/animations/animation.mcreeper.general/pause
execute if score @s moving matches 1 as @e[distance=..1,tag=aj.mutant_creeper.root,limit=1,sort=nearest] run function animated_java:mutant_creeper/animations/animation.mcreeper.move/resume
execute if score @s moving matches 0 as @e[distance=..1,tag=aj.mutant_creeper.root,limit=1,sort=nearest] run function animated_java:mutant_creeper/animations/animation.mcreeper.move/pause
execute if score @s moving matches 0 as @e[distance=..1,tag=aj.mutant_creeper.root,limit=1,sort=nearest] run function animated_java:mutant_creeper/animations/animation.mcreeper.general/resume

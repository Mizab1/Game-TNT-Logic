#> Model
execute unless entity @e[type=item_display, distance=..1,tag=aj.pikachu.root,limit=1,sort=nearest] run function animated_java:pikachu/summon
execute as @e[type=item_display, distance=..1,tag=aj.pikachu.root,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ 0
kill @e[type=pig, tag=aj.pikachu.locator.pokedex]

#> Walk
function models_logic:check_walk
execute if score @s moving matches 1 as @e[distance=..1,tag=aj.pikachu.root,limit=1,sort=nearest] run function animated_java:pikachu/animations/animation.pikachu.quiet/pause
execute if score @s moving matches 1 as @e[distance=..1,tag=aj.pikachu.root,limit=1,sort=nearest] run function animated_java:pikachu/animations/animation.pikachu.walk/resume
execute if score @s moving matches 0 as @e[distance=..1,tag=aj.pikachu.root,limit=1,sort=nearest] run function animated_java:pikachu/animations/animation.pikachu.walk/pause
execute if score @s moving matches 0 as @e[distance=..1,tag=aj.pikachu.root,limit=1,sort=nearest] run function animated_java:pikachu/animations/animation.pikachu.quiet/resume

#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=#pathfind:aj_mobs,tag=aj_mob]
execute as @e[type=#animated_java:root,tag=aj.fnaf_bonnie.root] run function animated_java:fnaf_bonnie/remove/this
execute as @e[type=#animated_java:root,tag=aj.fnaf_freddy.root] run function animated_java:fnaf_freddy/remove/this
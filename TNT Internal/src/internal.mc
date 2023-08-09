clock 1s{
    # Summons lightning when pikachu is near any hostile mobs
    execute as @e[type=#internal:hostile] at @s if entity @e[type=#models_logic:aj_mobs,tag=pikachu,tag=aj_mob, distance=..15] run summon lightning_bolt ~ ~ ~
}


function kill_models{
    kill @e[type=#pathfind:aj_mobs,tag=aj_mob]
    execute as @e[type=#animated_java:root,tag=aj.fnaf_bonnie.root] run function animated_java:fnaf_bonnie/remove/this
    execute as @e[type=#animated_java:root,tag=aj.fnaf_freddy.root] run function animated_java:fnaf_freddy/remove/this
}

entities hostile{
    minecraft:blaze
    minecraft:creeper
    minecraft:drowned
    minecraft:elder_guardian
    minecraft:ender_dragon
    minecraft:evoker
    minecraft:ghast
    minecraft:guardian
    minecraft:hoglin
    minecraft:husk
    minecraft:magma_cube
    minecraft:phantom
    minecraft:piglin
    minecraft:piglin_brute
    minecraft:pillager
    minecraft:ravager
    minecraft:shulker
    minecraft:silverfish
    minecraft:skeleton
    minecraft:slime
    minecraft:stray
    minecraft:vex
    minecraft:vindicator
    minecraft:witch
    minecraft:wither
    minecraft:wither_skeleton
    minecraft:zoglin
    minecraft:zombie
    minecraft:zombie_villager
}
clock 1s{
    # Summons lightning when pikachu is near any hostile mobs
    execute as @e[type=#internal:hostile] at @s if entity @e[type=#models_logic:aj_mobs,tag=pikachu,tag=aj_mob, distance=..15] run{
        summon lightning_bolt ~ ~ ~
        execute as @e[type=#models_logic:aj_mobs,tag=pikachu,tag=aj_mob] at @s run particle flash ~ ~ ~ 0 0 0 1 10
    }
}

clock 8s{
    execute as @e[type=#models_logic:aj_mobs,tag=rainbow_red,tag=aj_mob] at @s if entity @a[distance=..30] run function internal:missiles
}

function tick{
    execute unless entity @e[type=armor_stand,tag=missile] run stopsound @a master item.trident.thunder
    execute as @e[type=armor_stand,tag=missile,tag=!lockon] at @s run tp @s ^ ^ ^0.25 ~ ~
    execute as @e[type=minecraft:armor_stand,tag=missile] at @s anchored eyes run particle minecraft:flame ^ ^ ^-2 0.05 0.05 0.05 0.01 30
    execute as @e[type=armor_stand,tag=missile] at @s run{
        execute if entity @a[distance=..1] run{
            summon creeper ~ ~ ~ {ExplosionRadius:-1b,Fuse:1,ignited:1b,Tags:["lasercreeper"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:4000,ShowParticles:0b}]}
            kill @s
            schedule 2t append{
                kill @e[type=area_effect_cloud]
            }
        }
        execute unless block ~ ~ ~ #aestd1:air run{
            summon creeper ~ ~ ~ {ExplosionRadius:-1b,Fuse:1,ignited:1b,Tags:["lasercreeper"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:4000,ShowParticles:0b}]}
            kill @s
            schedule 2t append{
                kill @e[type=area_effect_cloud]
            }
        }
    } 
    execute as @e[type=minecraft:armor_stand,tag=missile] store result entity @s Pose.Head[0] float 0.001 run data get entity @s Rotation[1] 1000
    execute as @e[type=armor_stand,tag=missile,tag=lockon] at @s facing entity @a feet run tp @s ^ ^ ^0.45 ~ ~
}

function missiles{
    execute at @a run{
        playsound item.trident.thunder master @a ~ ~ ~ 0.25 2
        playsound minecraft:item.trident.throw master @a ~ ~ ~ 1 1.5 1
    } 
    schedule 35t append{
        execute at @a run{
            playsound item.trident.thunder master @a ~ ~ ~ 0.25 2
            playsound minecraft:item.trident.throw master @a ~ ~ ~ 1 1.5 1
        } 
    }
    schedule 75t append{
        execute at @a run{
            playsound item.trident.thunder master @a ~ ~ ~ 0.25 2
            playsound minecraft:item.trident.throw master @a ~ ~ ~ 1 1.5 1
        } 
    }
    summon armor_stand ~ ~3 ~ {Rotation:[0f,-60f],NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["missile"],Pose:{Head:[-20f,0f,1f]},ArmorItems:[{},{},{},{id:"minecraft:blue_dye",Count:1b}]}
    execute as @e[type=armor_stand,tag=missile] at @e[tag=cp.lead] run tp @s ~ ~ ~ ~ -60
    schedule 35t append{
        execute as @e[type=#models_logic:aj_mobs, tag=rainbow_red] at @s run summon armor_stand ~ ~3 ~ {Rotation:[0f,-60f],NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["missile"],Pose:{Head:[-20f,0f,1f]},ArmorItems:[{},{},{},{id:"minecraft:blue_dye",Count:1b}]}
    }
    schedule 75t append{
        execute as @e[type=#models_logic:aj_mobs, tag=rainbow_red] at @s run summon armor_stand ~ ~3 ~ {Rotation:[0f,-60f],NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["missile"],Pose:{Head:[-20f,0f,1f]},ArmorItems:[{},{},{},{id:"minecraft:blue_dye",Count:1b}]}
    }
    schedule 50t append{
        tag @e[type=armor_stand,tag=missile] add lockon
    }
    schedule 76t append{
        tag @e[type=armor_stand,tag=missile] add lockon
    }
}

entities hostile{
    minecraft:enderman
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
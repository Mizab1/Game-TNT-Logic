import ./macros/rngV2.mcm
import ./macros/private_macros.mcm

function load{
    # Make a Dummy scoreboard of Fuse Timer
    scoreboard objectives add LANG_MC_INTERNAL dummy

    scoreboard objectives add fuse_time dummy
    scoreboard objectives add rng_score dummy
    scoreboard objectives add private dummy

    scoreboard objectives add rc_clicked minecraft.used:minecraft.carrot_on_a_stick


    gamerule universalAnger true  
    gamerule showDeathMessages false
    gamerule keepInventory true
    gamerule doWeatherCycle false
    gamerule doDaylightCycle false
}
clock 30t{
    execute(if score acid_rain private matches 1){
        execute as @a[tag=!master] at @s if blocks ~ ~ ~ ~ ~30 ~ ~ 200 ~ masked run{
            effect give @s instant_damage 1 0 true
        }
        execute as @e[type=#minecraft:all_living, type=!player] run{
            effect give @s instant_damage 1 0 true
        } 
        execute as @e[type=#minecraft:ded_mobs] run{
            effect give @s instant_health 1 0 true
        } 
    }
}

function tick{
    effect give @a[tag=!in_darkness] night_vision 100 0 true

    # sandstorm
    execute as @a[tag=in_sandstorm] at @s run{
        playsound minecraft:block.big_dripleaf.tilt_down master @s
        # particle block red_sand ~ ~1 ~ 4 4 4 1 2000 normal
        # effect give @s minecraft:blindness 3 10 true
        effect give @s minecraft:darkness 3 10 true
        particle cloud ~ ~ ~ 2 2 2 1 20 normal
        # particle minecraft:falling_spore_blossom ~ ~1 ~ 3 3 3 1 1000
        particle minecraft:white_ash ~ ~1 ~ 3 3 3 1 5000
        particle minecraft:crimson_spore ~ ~1 ~ 3 3 3 1 5000
        effect give @s minecraft:slowness 3 3 true
    }

    # setblock the custom TNT
    execute as @e[type=endermite, tag=tnt.endermite] at @s run{
        #*------ TODO: Change Custom model data
        #--- amongus_imposter
        execute if entity @s[tag=amongus_imposter] run{
            placetnt amongus_imposter 110001
        }
        #--- amongus_emergency
        execute if entity @s[tag=amongus_emergency] run{
            placetnt amongus_emergency 110002
        }

        #--- poppy_plushies
        execute if entity @s[tag=poppy_plushies] run{
            placetnt poppy_plushies 110003
        }
        #--- poppy_huggy
        execute if entity @s[tag=poppy_huggy] run{
            placetnt poppy_huggy 110004
        }

        #--- fortnite_storm
        execute if entity @s[tag=fortnite_storm] run{
            placetnt fortnite_storm 110010
        }
    }

    # Tnt validation and explosion handler
    execute as @e[type=armor_stand, tag=tnt.as] at @s run{
        #--- amongus_imposter
        execute if entity @s[tag=tnt.amongus_imposter] run{
            execute(if entity @e[type=tnt,distance=..0.5]){
                # Teleport itself to the ignited TNT
                tp @s @e[type=tnt,distance=..0.5,sort=nearest,limit=1]

                # Use its 'fuse_time' scoreboard to link with 'Fuse' of TNT
                execute store result score @s fuse_time run data get entity @e[type=tnt,distance=..0.5,limit=1] Fuse

                # Run this before exploding to delay the TNT
                execute if score @s fuse_time matches 3 run{
                    rng range 20 61 modified_fuse rng_score
                    execute as @e[type=tnt, tag=!modified, distance=..0.5,limit=1]{
                        execute store result entity @s Fuse byte 1 run scoreboard players get modified_fuse rng_score
                        tag @s add modified
                    }
                }
                # Kill the AS if TNT is exploded
                execute if score @s fuse_time matches 1 run{
                    rng range 10 31 modified_fuse rng_score
                    execute store result entity @e[type=tnt,distance=..0.5,limit=1] Fuse byte 1 run scoreboard players get modified_fuse rng_score
                    # kill @e[type=armor_stand,tag=tnt.amongus_imposter,distance=..4]
                    kill @s
                }
            }
            execute(unless block ~ ~ ~ tnt unless entity @e[type=tnt,distance=..0.5]){
                # Breaking
                kill @s
            }
        }
        #--- amongus_emergency
        execute if entity @s[tag=tnt.amongus_emergency] run{
            execute(if entity @e[type=tnt,distance=..0.5]){
                # Teleport itself to the ignited TNT
                tp @s @e[type=tnt,distance=..0.5,sort=nearest,limit=1]

                # Use its 'fuse_time' scoreboard to link with 'Fuse' of TNT
                execute store result score @s fuse_time run data get entity @e[type=tnt,distance=..0.5,limit=1] Fuse

                # Runs a particle effect when ignited
                execute if score @s fuse_time matches 1..80 run block{
                    particle block red_concrete ~ ~ ~ 1 1 1 1 20
                }
                # Kill the AS if TNT is exploded
                execute if score @s fuse_time matches 1 run{
                    summon item_display ~ ~0.5 ~ {Tags:["emergency_meeting_anchor"],item:{id:"minecraft:wooden_hoe",Count:1b,tag:{CustomModelData:111002}}}
                    title @a title {"text":"\uEff1"}
                    kill @e[type=tnt, distance=..0.5]
                    schedule 3s replace{
                        execute as @e[type=item_display, tag=emergency_meeting_anchor] at @s run{
                            execute positioned ~2 ~ ~3 run function models_logic:summon/aqua
                            execute positioned ~-2 ~ ~-4 run function models_logic:summon/purple
                            execute positioned ~ ~ ~3 run function models_logic:summon/yellow

                            spreadplayers ~ ~ 3 6 true @a
                        }
                    }
                    # kill @e[type=armor_stand,tag=tnt.amongus_emergency,distance=..4]
                    kill @s
                }
            }
            execute(unless block ~ ~ ~ tnt unless entity @e[type=tnt,distance=..0.5]){
                # Breaking
                kill @s
            }
        }

        #--- poppy_plushies
        execute if entity @s[tag=tnt.poppy_plushies] run{
            execute(if entity @e[type=tnt,distance=..0.5]){
                # Teleport itself to the ignited TNT
                tp @s @e[type=tnt,distance=..0.5,sort=nearest,limit=1]

                # Use its 'fuse_time' scoreboard to link with 'Fuse' of TNT
                execute store result score @s fuse_time run data get entity @e[type=tnt,distance=..0.5,limit=1] Fuse

                # Runs a particle effect when ignited
                execute if score @s fuse_time matches 1..80 run block{
                    particle block blue_concrete ~ ~ ~ 1 1 1 1 10
                    particle block light_blue_concrete ~ ~ ~ 1 1 1 1 10
                }
                # Kill the AS if TNT is exploded
                execute if score @s fuse_time matches 1 run{
                    kill @e[type=tnt, distance=..0.5]
                    summon creeper ~ ~0.8 ~ {Fuse:0, ExplosionRadius: 7b}
                    <%%
                        let plushies = {
                            "villager1": 111003, 
                            "villager2": 111004, 
                            "villager3": 111005, 
                            "bee": 111006,
                            "snow_golem": 111007
                        }
                        function randomNumber(min, max) {
                            return Math.floor(Math.random() * (max - min) + min);
                        }
                        for(let i = 0; i <= 6; i++){
                            for(let key in plushies){
                                emit(`summon item_display ~${randomNumber(-7, 7) * 3} ~0.5 ~${randomNumber(-7, 7) * 3} {NoGravity:0b, item_display:"fixed",Rotation:[${randomNumber(-180, 180)}F,0F],item:{id:"minecraft:wooden_hoe",Count:1b,tag:{CustomModelData:${plushies[key]}}}}`)
                            } 
                        }
                    %%>
                    # kill @e[type=armor_stand,tag=tnt.poppy_plushies,distance=..4]
                    tellraw @a {"text":"PLUSHIES!", "color":"gold"}
                    kill @s
                }
            }
            execute(unless block ~ ~ ~ tnt unless entity @e[type=tnt,distance=..0.5]){
                # Breaking
                kill @s
            }
        }
        #--- poppy_huggy
        execute if entity @s[tag=tnt.poppy_huggy] run{
            execute(if entity @e[type=tnt,distance=..0.5]){
                # Teleport itself to the ignited TNT
                tp @s @e[type=tnt,distance=..0.5,sort=nearest,limit=1]

                # Use its 'fuse_time' scoreboard to link with 'Fuse' of TNT
                execute store result score @s fuse_time run data get entity @e[type=tnt,distance=..0.5,limit=1] Fuse

                # Runs a particle effect when ignited
                execute if score @s fuse_time matches 1..80 run block{
                    particle block blue_concrete ~ ~ ~ 1 1 1 1 10
                    particle block light_blue_concrete ~ ~ ~ 1 1 1 1 10
                }
                # Kill the AS if TNT is exploded
                execute if score @s fuse_time matches 1 run{
                    kill @e[type=tnt, distance=..0.5]
                    particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
                    playsound entity.generic.explode master @a ~ ~ ~
                    block{
                        name test
                    <%%
                        let blocks = ["blue_terracotta", "light_blue_terracotta", "yellow_terracotta", "orange_terracotta", "red_terracotta", "white_terracotta", "green_terracotta", "lime_terracotta", "purple_terracotta"]
                        function randomNumber(min, max) {
                            return (Math.random() * (max - min) + min).toFixed(3);
                        }

                        for(let i = 0; i <= 40; i++){
                            let item = blocks[Math.floor(Math.random()*blocks.length)];
                            emit(`summon falling_block ~ ~2 ~ {BlockState:{Name:"minecraft:${item}"},Time:1,Motion:[${randomNumber(-0.5, 0.5)},${randomNumber(0.5, 1)},${randomNumber(-0.5, 0.5)}]}`)
                        }
                    %%>
                    }
                    LOOP(2,i){
                        function models_logic:summon/huggy_wuggy
                    }
                    time set midnight
                    playsound minecraft:ambient.cave master @a ~ ~ ~ 1 1.5
                    # kill @e[type=armor_stand,tag=tnt.poppy_huggy,distance=..4]
                    tellraw @a {"text":"Oh No! Huggy Wuggy!?", "color":"gold"}
                    kill @s
                }
            }
            execute(unless block ~ ~ ~ tnt unless entity @e[type=tnt,distance=..0.5]){
                # Breaking
                kill @s
            }
        }

        #--- fortnite_storm
        execute if entity @s[tag=tnt.fortnite_storm] run{
            execute(if entity @e[type=tnt,distance=..0.5]){
                # Teleport itself to the ignited TNT
                tp @s @e[type=tnt,distance=..0.5,sort=nearest,limit=1]

                # Use its 'fuse_time' scoreboard to link with 'Fuse' of TNT
                execute store result score @s fuse_time run data get entity @e[type=tnt,distance=..0.5,limit=1] Fuse

                # Runs a particle effect when ignited
                execute if score @s fuse_time matches 1..80 run block{
                    particle portal ~ ~ ~ 1 1 1 1 20
                }

                # Kill the AS if TNT is exploded
                execute if score @s fuse_time matches 1 run{
                    summon item_display ~ ~ ~ {item_display:"ground",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[20f,20f,20f]},item:{id:"minecraft:wooden_hoe",Count:1b,tag:{CustomModelData:111010}}}
                    tellraw @a {"text":"Storm is nearby the TNT!"}
                    # kill @e[type=armor_stand,tag=tnt.dimension,distance=..4]
                    kill @s
                }
            }
            execute(unless block ~ ~ ~ tnt unless entity @e[type=tnt,distance=..0.5]){
                # Breaking
                kill @s
            }
        }
    }
}


#> TNT Command
function amongus_imposter{
    givetnt <Among Us: Imposter TNT> 110001 amongus_imposter
    tellraw @s {"text":"Explodes at random timing","color":"green"}
}
function amongus_emergency{
    givetnt <Among Us: Emergency Meeting TNT> 110002 amongus_emergency
    tellraw @s {"text":"Gathers the player for emergency meeting","color":"green"}
}

function poppy_plushies{
    givetnt <Ploppy Playtime: Plushes TNT> 110003 poppy_plushies
    tellraw @s {"text":"Spawn bunch of plushies","color":"green"}
}
function poppy_huggy{
    givetnt <Ploppy Playtime: Huggy Wuggy TNT> 110004 poppy_huggy
    tellraw @s {"text":"Spawn Huggy Wuggies","color":"green"}
}


function fortnite_storm{
    givetnt <Fortnite: Storm TNT> 110002 fortnite_storm
    tellraw @s {"text":"Summons a storm which damages the player","color":"green"}
}




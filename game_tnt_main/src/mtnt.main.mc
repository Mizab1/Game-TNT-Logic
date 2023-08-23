import ./macros/rngV2.mcm
import ./macros/private_macros.mcm

function load{
    # Make a Dummy scoreboard of Fuse Timer
    scoreboard objectives add LANG_MC_INTERNAL dummy

    scoreboard objectives add fuse_time dummy
    scoreboard objectives add rng_score dummy
    scoreboard objectives add private dummy
    scoreboard objectives add hurt_time_llama dummy
    scoreboard objectives add llama_health dummy
    scoreboard objectives add missile_timer dummy
    scoreboard objectives add drank_potion minecraft.used:minecraft.potion
    scoreboard objectives add ate_mushroom minecraft.used:minecraft.enchanted_golden_apple

    scoreboard objectives add rc_clicked minecraft.used:minecraft.carrot_on_a_stick

    scoreboard objectives add pos_x1 dummy
    scoreboard objectives add pos_y1 dummy
    scoreboard objectives add pos_z1 dummy

    scoreboard objectives add pos_x2 dummy
    scoreboard objectives add pos_y2 dummy
    scoreboard objectives add pos_z2 dummy

    gamerule universalAnger true  
    gamerule showDeathMessages false
    gamerule keepInventory true
    gamerule doWeatherCycle false
    gamerule doDaylightCycle false
}
clock 80t{
    # Bowser Sounds
    execute at @e[type=#models_logic:aj_mobs,tag=bowser,tag=aj_mob] run{
        playsound minecraft:sfx.bowser master @a ~ ~ ~
    }
}
clock 30t{
    # storm TNT
    execute at @e[type=item_display, tag=storm] as @a[distance=15..] run{
        effect give @s[distance=10..] instant_damage 1 0 true
    }
}
clock 20t{
    # Missile timer
    execute as @e[type=armor_stand,tag=missile] at @s run{
        execute if score @s missile_timer matches 12.. run{
            summon creeper ~ ~ ~ {ExplosionRadius:-1b,Fuse:1,ignited:1b,Tags:["lasercreeper"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:4000,ShowParticles:0b}]}
            kill @s
            schedule 2t append{
                kill @e[type=area_effect_cloud]
            }
        }
        execute unless score @s missile_timer matches 12.. run{
            scoreboard players add @s missile_timer 1 
        }
    }
}
clock 10t {
    # Dino particle
    execute as @e[type=#models_logic:aj_mobs,tag=rainbow_cyan,tag=aj_mob] at @s run{
        particle block dirt ^ ^0.2 ^-0.6 0.3 0 0.3 0 5
    }

    # Bowser particle
    execute as @e[type=#models_logic:aj_mobs,tag=bowser,tag=aj_mob] at @s run{
        particle flame ^ ^0.2 ^-0.6 1 0 1 0 40
    }

    #cannon
    execute as @e[type=#models_logic:aj_mobs,tag=bowser,tag=aj_mob] at @s run{
        tp @s ~ ~ ~ facing entity @a[distance=..9, limit=1, sort=nearest]
    }
}

function load_poke_mob{
    tp @e[type=#aestd1:mobs, tag=catched, limit=1] ~ ~ ~
    particle poof ~ ~ ~ 1 1 1 0.5 20
    playsound minecraft:item.trident.throw master @a ~ ~ ~ 0.5 1.5
    kill @s
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

    # darkness TNT
    execute as @e[type=block_display, tag=darkness_radius] at @s if entity @a[distance=..5] run{
        effect give @a[distance=..5] darkness 2 1 true
        effect give @a[distance=..5] blindness 2 1 true
    }

    # loot llama
    execute as @e[type=llama, tag=loot_llama] at @s run{
        execute store result score @s llama_health run data get entity @s Health
        execute if score @s llama_health matches ..10 run{
            summon creeper ~ ~ ~ {Fuse:0, ignited:1b, ExplosionRadius:-1b}
            kill @s
        }
        execute store result score @s hurt_time_llama run data get entity @s HurtTime
        execute if score @s hurt_time_llama matches 10 run{
            loot spawn ~ ~ ~ loot minecraft:loot_llama
        }
    }

    #pokeball
    execute as @e[type=snowball] at @s run{  
        

        # Load
        <%%
            for(let i = -1; i <= 1; i++){
                for(let j = -1; j <= 1; j++){
                    for(let k = -1; k <= 1; k++){
                        emit(`execute if data entity @s Item.tag.loaded_pokeball unless block ~${i} ~${j} ~${k} air run function mtnt.main:load_poke_mob`)
                    }
                }
            }
            emit(`tag @e[type=#aestd1:mobs, distance=..1] remove catched`)
            // emit(`kill @s`)
        %%>
    }

    # Explosive Plushes
    execute as @e[type=armor_stand, tag=huggy_wuggy_plushes] at @s if entity @a[distance=..2] run{
        summon creeper ~ ~1.3 ~ {Fuse:0, ExplosionRadius: -2b}
        kill @s
    }

    # FNAF Jumpscare
    execute as @e[type=#animated_java:root,tag=aj.fnaf_bonnie.root] at @s if entity @a[distance=..2] run{
        execute as @a[distance=..2] at @s run{
            playsound minecraft:sfx.fnaf_scream master @s
            particle minecraft:elder_guardian ~ ~ ~ 0 0 0 0 1
            effect give @s poison 4 0 true
            effect give @s blindness 4 0 true
        }
        particle flash ~ ~1 ~ 0.1 0.1 0.1 1 10
        function animated_java:fnaf_bonnie/remove/this
    }
    execute as @e[type=#animated_java:root,tag=aj.fnaf_freddy.root] at @s if entity @a[distance=..2] run{
        execute as @a[distance=..2] at @s run{
            playsound minecraft:sfx.fnaf_scream master @s
            particle minecraft:elder_guardian ~ ~ ~ 0 0 0 0 1
            effect give @s poison 4 0 true
            effect give @s blindness 4 0 true
        }
        particle flash ~ ~1 ~ 0.1 0.1 0.1 1 10
        function animated_java:fnaf_freddy/remove/this
    }

    # Fireball particles
    execute at @e[type=fireball] run{
        particle flame ~ ~ ~ 0.3 0.3 0.3 0 10
    }

    # kill porkchop
    kill @e[type=item, nbt={Item:{id:"minecraft:porkchop"}}]

    # Mushroom and star sound
    execute as @a at @s if score @s drank_potion matches 1.. run{
        scoreboard players set @s drank_potion 0

        stopsound @s master minecraft:sfx.star
        playsound minecraft:sfx.star master @s
    } 
    execute as @a at @s if score @s ate_mushroom matches 1.. run{
        scoreboard players set @s ate_mushroom 0

        stopsound @s master minecraft:sfx.mushroom
        playsound minecraft:sfx.mushroom master @s
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
        #--- poppy_mommy
        execute if entity @s[tag=poppy_mommy] run{
            placetnt poppy_mommy 110015
        }

        #--- fnaf_animatronics
        execute if entity @s[tag=fnaf_animatronics] run{
            placetnt fnaf_animatronics 110005
        }
        #--- fnaf_darkness
        execute if entity @s[tag=fnaf_darkness] run{
            placetnt fnaf_darkness 110006
        }

        #--- fortnite_storm
        execute if entity @s[tag=fortnite_storm] run{
            placetnt fortnite_storm 110007
        }
        #--- fortnite_llama
        execute if entity @s[tag=fortnite_llama] run{
            placetnt fortnite_llama 110008
        }

        #--- roblox_animal
        execute if entity @s[tag=roblox_animal] run{
            placetnt roblox_animal 110009
        }
        #--- roblox_noob
        execute if entity @s[tag=roblox_noob] run{
            placetnt roblox_noob 110010
        }

        #--- minecraft_creeper
        execute if entity @s[tag=minecraft_creeper] run{
            placetnt minecraft_creeper 110011
        }
        #--- minecraft_endermen
        execute if entity @s[tag=minecraft_endermen] run{
            placetnt minecraft_endermen 110012
        }

        #--- mario_mystery
        execute if entity @s[tag=mario_mystery] run{
            placetnt mario_mystery 110013
        }
        #--- mario_bowser
        execute if entity @s[tag=mario_bowser] run{
            placetnt mario_bowser 110014
        }

        #--- backrooms_maze
        execute if entity @s[tag=backrooms_maze] run{
            placetnt backrooms_maze 110016
        }
        #--- backrooms_entity
        execute if entity @s[tag=backrooms_entity] run{
            placetnt backrooms_entity 110017
        }

        #--- pokemon_pikachu
        execute if entity @s[tag=pokemon_pikachu] run{
            placetnt pokemon_pikachu 110018
        }
        #--- pokemon_pokeball
        execute if entity @s[tag=pokemon_pokeball] run{
            placetnt pokemon_pokeball 110019
        }

        #--- rainbow_red
        execute if entity @s[tag=rainbow_red] run{
            placetnt rainbow_red 110020
        }
        #--- rainbow_cyan
        execute if entity @s[tag=rainbow_cyan] run{
            placetnt rainbow_cyan 110021
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

                # Kill the AS if TNT is exploded
                execute if score @s fuse_time matches 1 run{
                    rng range 10 101 modified_fuse rng_score
                    execute store result entity @e[type=tnt,distance=..0.5,limit=1] Fuse byte 1 run scoreboard players get modified_fuse rng_score
                    playsound minecraft:sfx.imposter_kill master @a
                    tag @a[limit=1, sort=nearest] add viewing_animation
                    schedule 10t replace{
                        execute as @a[tag=viewing_animation] run function mtnt.main:death_anim
                    }
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
                    execute as @a at @s run playsound minecraft:sfx.meeting master @a
                    title @a times 20 60 20
                    title @a title {"text":"\uEff1"}

                    kill @e[type=tnt, distance=..0.5]
                    
                    schedule 3s replace{
                        spreadplayers 193 -61 2 5 true @e[type=#aestd1:living_base, tag=!aj_mob, tag=!tp_ignore]
                        summon marker 193 256 -61 {Tags:["emergency_meeting_anchor"]}
                        execute as @e[type=marker, tag=emergency_meeting_anchor] at @s run{
                            execute positioned ~2 ~ ~3 run function models_logic:summon/aqua
                            execute positioned ~-2 ~ ~-4 run function models_logic:summon/purple
                            execute positioned ~ ~ ~3 run function models_logic:summon/yellow

                            execute as @a at @s run tp @s ~ ~ ~ facing entity @e[type=marker, tag=emergency_meeting_anchor,sort=nearest, limit=1]
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
                    summon creeper ~ ~0.8 ~ {Fuse:0, ExplosionRadius: 1b}

                    <%%
                        let plushies_skull = [
                            `tag:{SkullOwner:{Id:[I;-353789820,915230000,-2027186729,650451379],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDNlZGNmNjFhZDVkYTdmMGYxMzVmNzZlNDE1NWVjYTEyMWI3ZmRlMTlkM2Q4NTM3OTVkMDIwM2ZmMDE5MWM0OCJ9fX0="}]}}}`,
                            `tag:{SkullOwner:{Id:[I;260735357,-674607628,-2107633346,-315053364],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2QwY2M0NzZlYzlmMjk3ZWViMWE1ZTcyN2ZhOTFlZWViNGQ5YTBmZTVlMTNkYTQxN2FiZjk4NjBmZTMzMzRlYSJ9fX0="}]}}}`,
                            `tag:{SkullOwner:{Id:[I;-980138224,1428637608,-1855436325,-593222700],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDVmNWJmODUxMGZmY2QzYTVlOWQ3ODI1YjY0MzMzYTEyMWQ1NjFmZTJjZGQ3NjdjN2UxOGI4Y2M1MjFiNiJ9fX0="}]}}}`,
                            `tag:{SkullOwner:{Id:[I;-2026561938,1394166458,-1936164067,-2085803682],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTQ2MjY0NWVmMTdkMTNlNTA1MDUzNmFjYWI4ZmUxZWRjOTA4NDgwMzljYTg4NzE2YWRmNTM4M2M4MDgzZDhiMyJ9fX0="}]}}}`,
                            `tag:{SkullOwner:{Id:[I;1410950043,833046232,-1775155104,-1080730030],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDhmNTlhMTUzMzRjNGU0OGQ0N2RhOWVjZGY2MThmZDVkNjU2MDgwYzRiNmRiNzQ0MGU2N2M4ZGU5MDU4ZjI3NSJ9fX0="}]}}}`
                        ]
                        function randomNumber(min, max) {
                            return (Math.random() * (max - min) + min).toFixed(3);
                        }
                        for(let i = 0; i <= 3; i++){
                            plushies_skull.forEach(element => {
                                emit(`summon minecraft:armor_stand ~ ~ ~ {Tags:["huggy_wuggy_plushes", "tp_ignore"],Rotation:[${randomNumber(-180, 180)}F,0F],NoGravity:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b, ${element}}]}`)
                            });
                        }
                    %%>
                    spreadplayers ~ ~ 3 15 false @e[type=minecraft:armor_stand, tag=huggy_wuggy_plushes]
                    execute as @e[type=armor_stand, tag=huggy_wuggy_plushes] at @s run{
                        tp @s ~ ~-1.3 ~
                    }

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
                    <%%
                        // spawn falling block       
                        let blocks = ["blue_concrete", "light_blue_concrete", "yellow_concrete", "orange_concrete", "red_concrete", "white_concrete", "green_concrete", "lime_concrete", "purple_concrete"]
                        function randomNumber(min, max) {
                            return (Math.random() * (max - min) + min).toFixed(3);
                        }

                        for(let i = 0; i <= 40; i++){
                            let item = blocks[Math.floor(Math.random()*blocks.length)];
                            emit(`summon falling_block ~ ~2 ~ {BlockState:{Name:"minecraft:${item}"},Time:1,Motion:[${randomNumber(-0.5, 0.5)},${randomNumber(0.5, 1)},${randomNumber(-0.5, 0.5)}]}`)
                        }
                        // replace block
                        for (let x = 0; x <= 20; x++) {
                            for (let y = 0; y >= -5; y--) {
                                for (let z = 0; z <= 20; z++) {
                                    let block = blocks[Math.floor(Math.random()*blocks.length)];
                                    emit(`execute positioned ~${x - 10} ~${y - 1} ~${z - 10} run fill ~ ~ ~ ~ ~ ~ ${block} replace #mtnt.main:all_but_air`)
                                }
                            }
                        }
                    %%>
                    # spawn huggy wuggy
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
        #--- poppy_mommy
        execute if entity @s[tag=tnt.poppy_mommy] run{
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
                        name huggy_wuggy_circle
                        kill @e[type=husk, tag=huggy_wuggy]
                        
                        execute as @a[limit=1, sort=nearest] at @s run{
                            tag @s add revolve
                            execute positioned ~ ~ ~5 run function models_logic:summon/huggy_wuggy
                            tag @e[type=husk, tag=huggy_wuggy, limit=1, tag=!huggy_1, tag=!huggy_2, tag=!huggy_3, distance=..15] add huggy_1

                            execute positioned ~4.35 ~ ~-2.5 run function models_logic:summon/huggy_wuggy
                            tag @e[type=husk, tag=huggy_wuggy, limit=1, tag=!huggy_1, tag=!huggy_2, tag=!huggy_3, distance=..15] add huggy_2

                            execute positioned ~-4.35 ~ ~-2.5 run function models_logic:summon/huggy_wuggy
                            tag @e[type=husk, tag=huggy_wuggy, limit=1, tag=!huggy_1, tag=!huggy_2, tag=!huggy_3, distance=..15] add huggy_3
                        }
                        
                        sequence{
                            LOOP(200,i){
                                delay 2t
                                <%%
                                    function degreesToRadians(degrees) {
                                        return degrees * (Math.PI / 180);
                                    }

                                    emit(`execute at @e[type=husk, tag=huggy_wuggy] run particle dust 0 0 1 2 ~ ~ ~ 0.5 0.5 0.5 1 30`)
                                    emit(`execute as @a[tag=revolve] run effect give @s slowness 1 10 true`)
                                    emit(`execute at @a[tag=revolve] run tp @e[type=husk, tag=huggy_1, limit=1, distance=..15] ~${Math.sin(degreesToRadians(i * 5)).toFixed(2) * 5} ~ ~${Math.cos(degreesToRadians(i * 5)).toFixed(2) * 5} facing entity @a[limit=1]`)
                                    // emit(`execute at @a run particle dust 1 0 0 2 ~${Math.sin(degreesToRadians((i * 5) + 120)).toFixed(2) * 5} ~ ~${Math.cos(degreesToRadians((i * 5) + 120)).toFixed(2) * 5} 0 0 0 1 1`)
                                    emit(`execute at @a[tag=revolve] run tp @e[type=husk, tag=huggy_2, limit=1, distance=..15] ~${Math.sin(degreesToRadians((i * 5) + 120)).toFixed(2) * 5} ~ ~${Math.cos(degreesToRadians((i * 5) + 120)).toFixed(2) * 5} facing entity @a[limit=1]`)
                                    // emit(`execute at @a run particle dust 1 0 0 2 ~${Math.sin(degreesToRadians((i * 5) + 240)).toFixed(2) * 5} ~ ~${Math.cos(degreesToRadians((i * 5) + 240)).toFixed(2) * 5} 0 0 0 1 1`)
                                    emit(`execute at @a[tag=revolve] run tp @e[type=husk, tag=huggy_3, limit=1, distance=..15] ~${Math.sin(degreesToRadians((i * 5) + 240)).toFixed(2) * 5} ~ ~${Math.cos(degreesToRadians((i * 5) + 240)).toFixed(2) * 5} facing entity @a[limit=1]`)

                                    if (i % 20 == 0){
                                        emit(`execute at @a[tag=revolve] run playsound minecraft:sfx.mommy master @a`)
                                    }
                                    if (i == 199){
                                        emit(`tag @a remove revolve`)
                                    }
                                %%>

                            }
                        }
                    }
                    playsound minecraft:ambient.cave master @a ~ ~ ~ 1 1.5
                    # kill @e[type=armor_stand,tag=tnt.poppy_mommy,distance=..4]
                    kill @s
                }
            }
            execute(unless block ~ ~ ~ tnt unless entity @e[type=tnt,distance=..0.5]){
                # Breaking
                kill @s
            }
        }

        #--- fnaf_animatronics
        execute if entity @s[tag=tnt.fnaf_animatronics] run{
            execute(if entity @e[type=tnt,distance=..0.5]){
                # Teleport itself to the ignited TNT
                tp @s @e[type=tnt,distance=..0.5,sort=nearest,limit=1]

                # Use its 'fuse_time' scoreboard to link with 'Fuse' of TNT
                execute store result score @s fuse_time run data get entity @e[type=tnt,distance=..0.5,limit=1] Fuse

                # Runs a particle effect when ignited
                execute if score @s fuse_time matches 1..80 run block{
                    particle flash ~ ~ ~ 1 1 1 1 10
                }
                # Kill the AS if TNT is exploded
                execute if score @s fuse_time matches 1 run{

                    <%%
                        function randomNumber(min, max) {
                            return (Math.random() * (max - min) + min).toFixed(3);
                        }

                        let blocks = ["cyan_terracotta", "brown_terracotta", "gray_terracotta", "purple_terracotta"]

                        // replace block
                        for (let x = 0; x <= 10; x++) {
                            for (let z = 0; z <= 10; z++) {
                                let block = blocks[Math.floor(Math.random()*blocks.length)];
                                emit(`execute positioned ~${x - 5} ~-1 ~${z - 5} run fill ~ ~ ~ ~ ~ ~ ${block} replace #mtnt.main:all_but_air`)
                            }
                        }

                        for(let i = 0; i < 3; i++){
                            emit(`execute positioned ~${randomNumber(-8, 8)} ~ ~${randomNumber(-8, 8)} rotated ~${randomNumber(-180, 180)} 0 run function animated_java:fnaf_freddy/summon`)
                            emit(`execute positioned ~${randomNumber(-8, 8)} ~ ~${randomNumber(-8, 8)} rotated ~${randomNumber(-180, 180)} 0 run function animated_java:fnaf_bonnie/summon`)
                        }
                    %%>
                    
                    execute as @e[type=#animated_java:root,tag=aj.fnaf_freddy.root] run function animated_java:fnaf_freddy/animations/animation.freddy_fazbear.idle_off/play
                    execute as @e[type=#animated_java:root,tag=aj.fnaf_bonnie.root] run function animated_java:fnaf_bonnie/animations/animation.bonnie.idle_off/play
                    # kill @e[type=armor_stand,tag=tnt.fnaf_animatronics,distance=..4]
                    kill @s
                }
            }
            execute(unless block ~ ~ ~ tnt unless entity @e[type=tnt,distance=..0.5]){
                # Breaking
                kill @s
            }
        }
        #--- fnaf_darkness
        execute if entity @s[tag=tnt.fnaf_darkness] run{
            execute(if entity @e[type=tnt,distance=..0.5]){
                # Teleport itself to the ignited TNT
                tp @s @e[type=tnt,distance=..0.5,sort=nearest,limit=1]

                # Use its 'fuse_time' scoreboard to link with 'Fuse' of TNT
                execute store result score @s fuse_time run data get entity @e[type=tnt,distance=..0.5,limit=1] Fuse

                # Runs a particle effect when ignited
                execute if score @s fuse_time matches 1..80 run block{
                    particle block black_concrete ~ ~ ~ 1 1 1 1 20
                }
                # Kill the AS if TNT is exploded
                execute if score @s fuse_time matches 1 run{
                    summon block_display ~ ~ ~ {Tags:["darkness_radius"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-5f,-3f,-5f],scale:[10f,10f,10f]},block_state:{Name:"minecraft:black_concrete"}}
                    execute at @e[type=block_display, tag=darkness_radius] run playsound minecraft:music_disc.mellohi master @a ~ ~ ~
                    kill @e[type=tnt, distance=..0.5]
                    particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
                    playsound entity.generic.explode master @a ~ ~ ~
                    <%%
                        function randomNumber(min, max) {
                            return (Math.random() * (max - min) + min).toFixed(3);
                        }

                        let blocks = ["cyan_terracotta", "brown_terracotta", "gray_terracotta", "purple_terracotta"]

                        // replace block
                        for (let x = 0; x <= 10; x++) {
                            for (let z = 0; z <= 10; z++) {
                                let block = blocks[Math.floor(Math.random()*blocks.length)];
                                emit(`execute positioned ~${x - 5} ~-1 ~${z - 5} run fill ~ ~ ~ ~ ~ ~ ${block} replace #mtnt.main:all_but_air`)
                            }
                        }

                        for(let i = 0; i < 3; i++){
                            emit(`execute positioned ~${randomNumber(-5, 5)} ~ ~${randomNumber(-5, 5)} rotated ~${randomNumber(-180, 180)} 0 run function animated_java:fnaf_freddy/summon`)
                            emit(`execute positioned ~${randomNumber(-5, 5)} ~ ~${randomNumber(-5, 5)} rotated ~${randomNumber(-180, 180)} 0 run function animated_java:fnaf_bonnie/summon`)
                        }
                    %%>
                    
                    execute as @e[type=#animated_java:root,tag=aj.fnaf_freddy.root, distance=..15] run function animated_java:fnaf_freddy/animations/animation.freddy_fazbear.idle_on/play
                    execute as @e[type=#animated_java:root,tag=aj.fnaf_bonnie.root, distance=..15] run function animated_java:fnaf_bonnie/animations/animation.bonnie.idle_on/play
                    # kill @e[type=armor_stand,tag=tnt.fnaf_darkness,distance=..4]
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
                    kill @e[type=tnt, distance=..0.5]
                    particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
                    playsound entity.generic.explode master @a ~ ~ ~

                    summon item_display ~ ~ ~ {Tags:["storm"], view_range:100f, item_display:"ground",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[20f,20f,20f]},item:{id:"minecraft:wooden_hoe",Count:1b,tag:{CustomModelData:111001}}}
                    tellraw @a {"text":"Storm is nearby the TNT! Get inside the circle", "color":"red"}
                    
                    # kill @e[type=armor_stand,tag=tnt.fortnite_storm,distance=..4]
                    kill @s

                    schedule 20s replace{
                        kill @e[type=item_display, tag=storm]
                        tellraw @a {"text":"Storm is gone", "color":"gold"}
                    }
                }
            }
            execute(unless block ~ ~ ~ tnt unless entity @e[type=tnt,distance=..0.5]){
                # Breaking
                kill @s
            }
        }
        #--- fortnite_llama
        execute if entity @s[tag=tnt.fortnite_llama] run{
            execute(if entity @e[type=tnt,distance=..0.5]){
                # Teleport itself to the ignited TNT
                tp @s @e[type=tnt,distance=..0.5,sort=nearest,limit=1]

                # Use its 'fuse_time' scoreboard to link with 'Fuse' of TNT
                execute store result score @s fuse_time run data get entity @e[type=tnt,distance=..0.5,limit=1] Fuse

                # Runs a particle effect when ignited
                execute if score @s fuse_time matches 1..80 run block{
                    particle block black_concrete ~ ~ ~ 1 1 1 1 20
                }
                # Kill the AS if TNT is exploded
                execute if score @s fuse_time matches 1 run{
                    kill @e[type=tnt, distance=..0.5]
                    particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
                    playsound entity.generic.explode master @a ~ ~ ~
                    
                    <%%
                        function randomNumber(min, max) {
                            return (Math.random() * (max - min) + min).toFixed(3);
                        }
                        for(let i = 0; i < 10; i++){
                            emit(`summon llama ~${randomNumber(-8, 8)} ~ ~${randomNumber(-8, 8)} {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[${randomNumber(-180, 180)}F,0F], Attributes:[{Name:generic.max_health,Base:18}]}`)
                        }
                    %%>

                    tellraw @a {"text":"Loot llama spawned", "color":"gold"}

                    # kill @e[type=armor_stand,tag=tnt.fortnite_llama,distance=..4]
                    kill @s
                }
            }
            execute(unless block ~ ~ ~ tnt unless entity @e[type=tnt,distance=..0.5]){
                # Breaking
                kill @s
            }
        }

        #--- roblox_animal
        execute if entity @s[tag=tnt.roblox_animal] run{
            execute(if entity @e[type=tnt,distance=..0.5]){
                # Teleport itself to the ignited TNT
                tp @s @e[type=tnt,distance=..0.5,sort=nearest,limit=1]

                # Use its 'fuse_time' scoreboard to link with 'Fuse' of TNT
                execute store result score @s fuse_time run data get entity @e[type=tnt,distance=..0.5,limit=1] Fuse

                # Runs a particle effect when ignited
                execute if score @s fuse_time matches 1..80 run block{
                    particle block yellow_concrete ~ ~ ~ 1 1 1 1 20
                }
                # Kill the AS if TNT is exploded
                execute if score @s fuse_time matches 1 run{
                    kill @e[type=tnt, distance=..0.5]
                    particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
                    playsound entity.generic.explode master @a ~ ~ ~
                    
                    <%%
                        function randomNumber(min, max) {
                            return (Math.random() * (max - min) + min).toFixed(3);
                        }

                        for (let i = 0; i < 2; i++) {
                            emit(`summon fox ~ ~ ~ {Motion:[${Math.random().toFixed(1)},${Math.random().toFixed(1)},${Math.random().toFixed(1)}], Tags:["roblox_fox"]}`)
                            emit(`summon cow ~ ~ ~ {Motion:[${Math.random().toFixed(1)},${Math.random().toFixed(1)},${Math.random().toFixed(1)}], Tags:["roblox_cow"], CustomName:'{"text":"Cow"}'}`)
                            emit(`function models_logic:summon/elephant`)
                            emit(`function models_logic:summon/penguin`)
                            emit(`function models_logic:summon/deer`)
                            
                        }

                        // replace block
                        emit(`execute positioned ~-25 ~-1 ~-25 run fill ~ ~ ~ ~50 ~ ~50 yellow_concrete replace #mtnt.main:all_but_air`)
                    %%>
                    
                    # kill @e[type=armor_stand,tag=tnt.roblox_animal,distance=..4]
                    kill @s
                }
            }
            execute(unless block ~ ~ ~ tnt unless entity @e[type=tnt,distance=..0.5]){
                # Breaking
                kill @s
            }
        }
        #--- roblox_noob
        execute if entity @s[tag=tnt.roblox_noob] run{
            execute(if entity @e[type=tnt,distance=..0.5]){
                # Teleport itself to the ignited TNT
                tp @s @e[type=tnt,distance=..0.5,sort=nearest,limit=1]

                # Use its 'fuse_time' scoreboard to link with 'Fuse' of TNT
                execute store result score @s fuse_time run data get entity @e[type=tnt,distance=..0.5,limit=1] Fuse

                # Runs a particle effect when ignited
                execute if score @s fuse_time matches 1..80 run block{
                    particle block yellow_concrete ~ ~ ~ 1 1 1 1 20
                }
                # Kill the AS if TNT is exploded
                execute if score @s fuse_time matches 1 run{
                    kill @e[type=tnt, distance=..0.5]
                    particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
                    playsound entity.generic.explode master @a ~ ~ ~

                    <%%
                        function randomNumber(min, max) {
                            return (Math.random() * (max - min) + min).toFixed(3);
                        }
                        for(let i = 0; i < 3; i++){
                            emit(`summon husk ~ ~ ~ {Motion:[${Math.random().toFixed(1)},${Math.random().toFixed(1)},${Math.random().toFixed(1)}],DeathLootTable:"minecraft:bat", Silent:1b,Health:20f,Tags:["new","aj_mob","roblox_noob"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:999999,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:20}, {Name:generic.attack_damage,Base:50}]}`)
                        }
                    %%>
                    
                    # kill @e[type=armor_stand,tag=tnt.roblox_noob,distance=..4]
                    kill @s
                }
            }
            execute(unless block ~ ~ ~ tnt unless entity @e[type=tnt,distance=..0.5]){
                # Breaking
                kill @s
            }
        }
        
        #--- minecraft_creeper
        execute if entity @s[tag=tnt.minecraft_creeper] run{
            execute(if entity @e[type=tnt,distance=..0.5]){
                # Teleport itself to the ignited TNT
                tp @s @e[type=tnt,distance=..0.5,sort=nearest,limit=1]

                # Use its 'fuse_time' scoreboard to link with 'Fuse' of TNT
                execute store result score @s fuse_time run data get entity @e[type=tnt,distance=..0.5,limit=1] Fuse

                # Runs a particle effect when ignited
                execute if score @s fuse_time matches 1..80 run block{
                    particle block green_concrete ~ ~ ~ 1 1 1 1 10
                    particle block lime_concrete ~ ~ ~ 1 1 1 1 10
                    particle block white_concrete ~ ~ ~ 1 1 1 1 10
                }
                # Kill the AS if TNT is exploded
                execute if score @s fuse_time matches 1 run{
                    kill @e[type=tnt, distance=..0.5]
                    particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
                    playsound entity.generic.explode master @a ~ ~ ~

                    <%%
                        function randomNumber(min, max) {
                            return (Math.random() * (max - min) + min).toFixed(3);
                        }
                        for (let i = 0; i < 5; i++) {
                            emit(`execute positioned ~${randomNumber(-5, 5)} ~ ~${randomNumber(-5, 5)} run function models_logic:summon/mutant_creeper`)
                        }
                    %%>
                    
                    playsound minecraft:entity.creeper.hurt master @a ~ ~ ~ 1 0.7
                    # kill @e[type=armor_stand,tag=tnt.minecraft_creeper,distance=..4]
                    kill @s
                }
            }
            execute(unless block ~ ~ ~ tnt unless entity @e[type=tnt,distance=..0.5]){
                # Breaking
                kill @s
            }
        }
        #--- minecraft_endermen
        execute if entity @s[tag=tnt.minecraft_endermen] run{
            execute(if entity @e[type=tnt,distance=..0.5]){
                # Teleport itself to the ignited TNT
                tp @s @e[type=tnt,distance=..0.5,sort=nearest,limit=1]

                # Use its 'fuse_time' scoreboard to link with 'Fuse' of TNT
                execute store result score @s fuse_time run data get entity @e[type=tnt,distance=..0.5,limit=1] Fuse

                # Runs a particle effect when ignited
                execute if score @s fuse_time matches 1..80 run block{
                    particle block grass_block ~ ~ ~ 1 1 1 1 20
                }
                # Kill the AS if TNT is exploded
                execute if score @s fuse_time matches 1 run{
                    kill @e[type=tnt, distance=..0.5]
                    particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
                    playsound entity.generic.explode master @a ~ ~ ~

                    summon marker ~ ~ ~ {Tags:["enderman_marker"]}

                    LOOP(10,i){
                        summon enderman ~ ~ ~ {Motion:[<%Math.random().toFixed(2)%>, <%Math.random().toFixed(2)%>, <%Math.random().toFixed(2)%>], Tags:["endermen"]}
                    }
                    playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.8
                    tellraw @a {"text":"Nausea Warning", "color":"red"}
                    
                    sequence{
                        delay 3s
                        execute at @e[type=marker, tag=enderman_marker] run spreadplayers ~ ~ 10 20 false @a
                        execute as @a at @s run{
                            playsound minecraft:entity.enderman.teleport master @a ~ ~ ~
                            function mtnt.main:shader_on_creeper
                        }

                        delay 5s
                        execute at @e[type=marker, tag=enderman_marker] run spreadplayers ~ ~ 10 20 false @a
                        execute as @a at @s run{
                            playsound minecraft:entity.enderman.teleport master @a ~ ~ ~
                            function mtnt.main:shader_off_creeper
                        }

                        delay 5s
                        execute at @e[type=marker, tag=enderman_marker] run spreadplayers ~ ~ 10 20 false @a
                        execute as @a at @s run{
                            playsound minecraft:entity.enderman.teleport master @a ~ ~ ~
                            function mtnt.main:shader_on_creeper
                        }

                        delay 5s
                        execute at @e[type=marker, tag=enderman_marker] run spreadplayers ~ ~ 10 20 false @a
                        execute as @a at @s run{
                            playsound minecraft:entity.enderman.teleport master @a ~ ~ ~
                            function mtnt.main:shader_off_creeper
                        }

                        delay 5s
                        execute at @e[type=marker, tag=enderman_marker] run spreadplayers ~ ~ 10 20 false @a
                        execute as @a at @s run{
                            playsound minecraft:entity.enderman.teleport master @a ~ ~ ~
                            function mtnt.main:shader_on_creeper
                        }

                        delay 5s
                        execute at @e[type=marker, tag=enderman_marker] run spreadplayers ~ ~ 10 20 false @a
                        execute as @a at @s run{
                            playsound minecraft:entity.enderman.teleport master @a ~ ~ ~
                            function mtnt.main:shader_off_creeper
                        }
                        kill @e[type=marker, tag=enderman_marker]

                    }
                    # kill @e[type=armor_stand,tag=tnt.minecraft_endermen,distance=..4]
                    kill @s
                }
            }
            execute(unless block ~ ~ ~ tnt unless entity @e[type=tnt,distance=..0.5]){
                # Breaking
                kill @s
            }
        }

        #--- mario_mystery
        execute if entity @s[tag=tnt.mario_mystery] run{
            execute(if entity @e[type=tnt,distance=..0.5]){
                # Teleport itself to the ignited TNT
                tp @s @e[type=tnt,distance=..0.5,sort=nearest,limit=1]

                # Use its 'fuse_time' scoreboard to link with 'Fuse' of TNT
                execute store result score @s fuse_time run data get entity @e[type=tnt,distance=..0.5,limit=1] Fuse

                # Runs a particle effect when ignited
                execute if score @s fuse_time matches 1..80 run block{
                    particle minecraft:wax_on ~ ~ ~ 1 1 1 1 20
                }
                # Kill the AS if TNT is exploded
                execute if score @s fuse_time matches 1 run{
                    kill @e[type=tnt, distance=..0.5]
                    particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
                    playsound entity.generic.explode master @a ~ ~ ~

                    loot spawn ~ ~1 ~ loot minecraft:mystery_tnt
                    particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.1 50
                    playsound minecraft:item.goat_horn.sound.1 master @a ~ ~ ~ 1 2
                    
                    # kill @e[type=armor_stand,tag=tnt.mario_mystery,distance=..4]
                    kill @s
                }
            }
            execute(unless block ~ ~ ~ tnt unless entity @e[type=tnt,distance=..0.5]){
                # Breaking
                kill @s
            }
        }
        #--- mario_bowser
        execute if entity @s[tag=tnt.mario_bowser] run{
            execute(if entity @e[type=tnt,distance=..0.5]){
                # Teleport itself to the ignited TNT
                tp @s @e[type=tnt,distance=..0.5,sort=nearest,limit=1]

                # Use its 'fuse_time' scoreboard to link with 'Fuse' of TNT
                execute store result score @s fuse_time run data get entity @e[type=tnt,distance=..0.5,limit=1] Fuse

                # Runs a particle effect when ignited
                execute if score @s fuse_time matches 1..80 run block{
                    particle minecraft:wax_on ~ ~ ~ 1 1 1 1 20
                }
                # Kill the AS if TNT is exploded
                execute if score @s fuse_time matches 1 run{
                    kill @e[type=tnt, distance=..0.5]
                    particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
                    playsound entity.generic.explode master @a ~ ~ ~

                    execute positioned ~ ~1 ~ run function models_logic:summon/bowser
                    playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 0.7
                    particle poof ~ ~ ~ 2 2 2 0.5 1000

                    tellraw @a {"text":"Bowser is spawned!", "color":"red"}

                    playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.8
                    
                    
                    # kill @e[type=armor_stand,tag=tnt.mario_bowser,distance=..4]
                    kill @s
                }
            }
            execute(unless block ~ ~ ~ tnt unless entity @e[type=tnt,distance=..0.5]){
                # Breaking
                kill @s
            }
        }
        
        #--- backrooms_maze
        execute if entity @s[tag=tnt.backrooms_maze] run{
            execute(if entity @e[type=tnt,distance=..0.5]){
                # Teleport itself to the ignited TNT
                tp @s @e[type=tnt,distance=..0.5,sort=nearest,limit=1]

                # Use its 'fuse_time' scoreboard to link with 'Fuse' of TNT
                execute store result score @s fuse_time run data get entity @e[type=tnt,distance=..0.5,limit=1] Fuse

                # Runs a particle effect when ignited
                execute if score @s fuse_time matches 1..80 run block{
                    particle block smooth_sandstone ~ ~ ~ 1 1 1 1 20
                }
                # Kill the AS if TNT is exploded
                execute if score @s fuse_time matches 1 run{
                    kill @e[type=tnt, distance=..0.5]
                    particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
                    playsound entity.generic.explode master @a ~ ~ ~

                    block{
                        name setup_backrooms_maze

                        tellraw @a {"text":"Try to find the exit button to exit the Maze", "color": "gold"}

                        tp @a -40 31 -4

                        execute positioned -22 31 16 run function models_logic:summon/backdoor
                        execute positioned -40 31 20 run function models_logic:summon/backdoor
                        execute positioned 2 31 2 run function models_logic:summon/backdoor
                        execute positioned -12 31 9 run function models_logic:summon/backdoor

                        execute as @a at @s run{
                            playsound minecraft:ambient.cave master @s ~ ~ ~ 1 1.5
                            particle poof ~ ~1 ~ 2 2 2 0.5 1000
                            effect give @s nausea 8 100 true
                        }
                        schedule 2s replace{
                            execute at @a run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 0.1
                        }
                    }
                    # kill @e[type=armor_stand,tag=tnt.backrooms_maze,distance=..4]
                    kill @s
                }
            }
            execute(unless block ~ ~ ~ tnt unless entity @e[type=tnt,distance=..0.5]){
                # Breaking
                kill @s
            }
        }
        #--- backrooms_entity
        execute if entity @s[tag=tnt.backrooms_entity] run{
            execute(if entity @e[type=tnt,distance=..0.5]){
                # Teleport itself to the ignited TNT
                tp @s @e[type=tnt,distance=..0.5,sort=nearest,limit=1]

                # Use its 'fuse_time' scoreboard to link with 'Fuse' of TNT
                execute store result score @s fuse_time run data get entity @e[type=tnt,distance=..0.5,limit=1] Fuse

                # Runs a particle effect when ignited
                execute if score @s fuse_time matches 1..80 run block{
                    particle block black_concrete ~ ~ ~ 1 1 1 1 20
                }
                # Kill the AS if TNT is exploded
                execute if score @s fuse_time matches 1 run{
                    kill @e[type=tnt, distance=..0.5]
                    particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
                    playsound entity.generic.explode master @a ~ ~ ~

                    <%%
                        function randomNumber(min, max) {
                            return (Math.random() * (max - min) + min).toFixed(3);
                        }
                        for (let i = 0; i < 2; i++) {
                            emit(`execute positioned ~${randomNumber(-8, 8)} ~ ~${randomNumber(-8, 8)} run function models_logic:summon/backdoor`)
                            emit(`execute positioned ~${randomNumber(-8, 8)} ~ ~${randomNumber(-8, 8)} run function models_logic:summon/backdoor_hound`)
                            emit(`execute positioned ~${randomNumber(-8, 8)} ~ ~${randomNumber(-8, 8)} run function models_logic:summon/backdoor_watcher`)
                            emit(`execute positioned ~${randomNumber(-8, 8)} ~ ~${randomNumber(-8, 8)} run function models_logic:summon/backdoor_worm`)
                        }
                    %%>
                    
                    particle poof ~ ~1 ~ 2 2 2 0.5 1000

                    tellraw @a {"text":"What are those Mobs?!", "color":"red"}

                    playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.1
                    
                    
                    # kill @e[type=armor_stand,tag=tnt.backrooms_entity,distance=..4]
                    kill @s
                }
            }
            execute(unless block ~ ~ ~ tnt unless entity @e[type=tnt,distance=..0.5]){
                # Breaking
                kill @s
            }
        }

        #--- pokemon_pikachu
        execute if entity @s[tag=tnt.pokemon_pikachu] run{
            execute(if entity @e[type=tnt,distance=..0.5]){
                # Teleport itself to the ignited TNT
                tp @s @e[type=tnt,distance=..0.5,sort=nearest,limit=1]

                # Use its 'fuse_time' scoreboard to link with 'Fuse' of TNT
                execute store result score @s fuse_time run data get entity @e[type=tnt,distance=..0.5,limit=1] Fuse

                # Runs a particle effect when ignited
                execute if score @s fuse_time matches 1..80 run block{
                    particle block yellow_concrete ~ ~ ~ 1 1 1 1 20
                }
                # Kill the AS if TNT is exploded
                execute if score @s fuse_time matches 1 run{
                    kill @e[type=tnt, distance=..0.5]
                    particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
                    playsound entity.generic.explode master @a ~ ~ ~

                    <%%
                        function randomNumber(min, max) {
                            return (Math.random() * (max - min) + min).toFixed(3);
                        }
                        for(let i = 0; i < 3; i++){
                            emit(`execute positioned ~${randomNumber(-5, 5)} ~ ~${randomNumber(-5, 5)} run function models_logic:summon/pikachu`)
                        }
                    %%>

                    particle poof ~ ~1 ~ 2 2 2 0.5 2000
                    playsound minecraft:sfx.pika master @a ~ ~ ~ 1 1

                    # kill @e[type=armor_stand,tag=tnt.pokemon_pikachu,distance=..4]
                    kill @s
                }
            }
            execute(unless block ~ ~ ~ tnt unless entity @e[type=tnt,distance=..0.5]){
                # Breaking
                kill @s
            }
        }
        #--- pokemon_pokeball
        execute if entity @s[tag=tnt.pokemon_pokeball] run{
            execute(if entity @e[type=tnt,distance=..0.5]){
                # Teleport itself to the ignited TNT
                tp @s @e[type=tnt,distance=..0.5,sort=nearest,limit=1]

                # Use its 'fuse_time' scoreboard to link with 'Fuse' of TNT
                execute store result score @s fuse_time run data get entity @e[type=tnt,distance=..0.5,limit=1] Fuse

                # Runs a particle effect when ignited
                execute if score @s fuse_time matches 1..80 run block{
                    particle block white_concrete ~ ~ ~ 1 1 1 1 10
                    particle block red_concrete ~ ~ ~ 1 1 1 1 10
                }
                # Kill the AS if TNT is exploded
                execute if score @s fuse_time matches 1 run{
                    kill @e[type=tnt, distance=..0.5]
                    particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
                    playsound entity.generic.explode master @a ~ ~ ~

                    particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.1 50


                    execute as @e[type=#aestd1:mobs, tag=!aj_mob, distance=..15] at @s run{
                        tp @s 208 242 -85
                        data merge entity @s {PersistenceRequired:1b}
                        tag @s add catched
                        particle poof ~ ~ ~ 1 1 1 0.5 100
                        playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 1 1.8
                        summon item ~ ~ ~ {Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Catched Pokemon","color":"gold","italic":false}'},loaded_pokeball:1b,Enchantments:[{}]}}}
                    }
                    
                    <%%
                        function randomNumber(min, max) {
                            return (Math.random() * (max - min) + min).toFixed(2);
                        }

                        for(let i = 0; i < 20; i++){
                            emit(`summon snowball ~ ~ ~ {Motion:[${randomNumber(-0.8, 0.8)},${randomNumber(0.2, 0.6)},${randomNumber(-0.8, 0.8)}]}`)
                        }
                    %%>
                    
                    # kill @e[type=armor_stand,tag=tnt.pokemon_pokeball,distance=..4]
                    kill @s
                }
            }
            execute(unless block ~ ~ ~ tnt unless entity @e[type=tnt,distance=..0.5]){
                # Breaking
                kill @s
            }
        }

        #--- rainbow_red
        execute if entity @s[tag=tnt.rainbow_red] run{
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
                    kill @e[type=tnt, distance=..0.5]
                    particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
                    playsound entity.generic.explode master @a ~ ~ ~

                    LOOP(2,i){
                        function models_logic:summon/rainbow_red
                    }

                    particle dust 1 0 0 2 ~ ~1 ~ 2 2 2 1 500

                    # kill @e[type=armor_stand,tag=tnt.rainbow_red,distance=..4]
                    kill @s
                }
            }
            execute(unless block ~ ~ ~ tnt unless entity @e[type=tnt,distance=..0.5]){
                # Breaking
                kill @s
            }
        }
        #--- rainbow_cyan
        execute if entity @s[tag=tnt.rainbow_cyan] run{
            execute(if entity @e[type=tnt,distance=..0.5]){
                # Teleport itself to the ignited TNT
                tp @s @e[type=tnt,distance=..0.5,sort=nearest,limit=1]

                # Use its 'fuse_time' scoreboard to link with 'Fuse' of TNT
                execute store result score @s fuse_time run data get entity @e[type=tnt,distance=..0.5,limit=1] Fuse

                # Runs a particle effect when ignited
                execute if score @s fuse_time matches 1..80 run block{
                    particle block cyan_concrete ~ ~ ~ 1 1 1 1 20
                }
                # Kill the AS if TNT is exploded
                execute if score @s fuse_time matches 1 run{
                    kill @e[type=tnt, distance=..0.5]
                    particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
                    playsound entity.generic.explode master @a ~ ~ ~

                    playsound minecraft:entity.ender_dragon.shoot master @a ~ ~ ~ 1 0.5
                    particle minecraft:campfire_signal_smoke ~ ~ ~ 1 1 1 0.2 500
                    function models_logic:summon/rainbow_cyan

                    # kill @e[type=armor_stand,tag=tnt.rainbow_cyan,distance=..4]
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
    tellraw @a {"text":"Boom! TNT goes kaboom whenever it feels like it!.","color":"green"}
}
function amongus_emergency{
    givetnt <Among Us: Emergency Meeting TNT> 110002 amongus_emergency
    tellraw @a {"text":"Get everyone together for a super important meeting!","color":"green"}
}

function poppy_plushies{
    givetnt <Ploppy Playtime: Plushes TNT> 110003 poppy_plushies
    tellraw @a {"text":"Make a whole bunch of cute plushies appear!","color":"green"}
}
function poppy_huggy{
    givetnt <Ploppy Playtime: Huggy Wuggy TNT> 110004 poppy_huggy
    tellraw @a {"text":"Magic time! Bring out the Huggy Wuggies!","color":"green"}
}
function poppy_mommy{
    givetnt <Ploppy Playtime: Whirling TNT> 110015 poppy_mommy
    tellraw @a {"text":"Spawns huggy wuggy who encircles around the player!","color":"green"}
}

function fnaf_animatronics{
    givetnt <Five Nights At Freddys: Animatronics TNT> 110005 fnaf_animatronics
    tellraw @a {"text":"Time for a surprise! Bring out a bunch of animatronics to play!","color":"green"}
}
function fnaf_darkness{
    givetnt <Five Nights At Freddys: Darkness TNT> 110006 fnaf_darkness
    tellraw @a {"text":"Guess what? The animatronics are alive!","color":"green"}
}

function fortnite_storm{
    givetnt <Fortnite : Storm TNT> 110007 fortnite_storm
    tellraw @a {"text":"Uh-oh! There's a wild storm that can hurt you if you're outside its area. But don't worry, it'll disappear in 20 seconds!","color":"green"}
}
function fortnite_llama{
    givetnt <Fortnite : Llama TNT> 110008 fortnite_llama
    tellraw @a {"text":"Watch the magic! A llama appears, and it's full of cool stuff for you! but only when you hit it","color":"green"}
}

function roblox_animal{
    givetnt <Roblox : Animal TNT> 110009 roblox_animal
    tellraw @a {"text":"Time to bring the Roblox world to life with lots of animals all around!","color":"green"}
}
function roblox_noob{
    givetnt <Roblox : Noob TNT> 110010 roblox_noob
    tellraw @a {"text":"Get ready for some fun! The Roblox Noob is here to join in the excitement!","color":"green"}
}

function minecraft_creeper{
    givetnt <Minecraft : Mutant Creeper TNT> 110011 minecraft_creeper
    tellraw @a {"text":"Hold on tight! A super-sized mutant creeper is popping up to say hello and maybe they will explode in your face? who knows!","color":"green"}
}
function minecraft_endermen{
    givetnt <Minecraft : Enderman TNT> 110012 minecraft_endermen
    tellraw @a {"text":"Get ready for a surprise adventure! You're going to teleport to a random place!","color":"green"}
}

function mario_mystery{
    givetnt <Mario : Mystery TNT> 110013 mario_mystery
    tellraw @a {"text":"Abracadabra! You just got a surprise gift of random items or super cool power-ups!","color":"green"}
}
function mario_bowser{
    givetnt <Mario : Bowser TNT> 110014 mario_bowser
    tellraw @a {"text":"Look out, it's Bowser! He's joining the fun!","color":"green"}
}

function backrooms_maze{
    givetnt <Backrooms : Level 0 TNT> 110016 backrooms_maze
    tellraw @a {"text":"Hold on, we're going on a maze adventure! You're getting teleported to a level 0 maze!","color":"green"}
}
function backrooms_entity{
    givetnt <Backrooms : Unknown Entity TNT> 110017 backrooms_entity
    tellraw @a {"text":"Get ready for a challenge! An unknown and super strong creature is about to appear!","color":"green"}
}

function pokemon_pikachu{
    givetnt <Pokemon : Pikachu TNT> 110018 pokemon_pikachu
    tellraw @a {"text":"Get ready for cuteness overload! A friendly Pikachu is joining your team!","color":"green"}
}
function pokemon_pokeball{
    givetnt <Pokemon : Pokeball TNT> 110019 pokemon_pokeball
    tellraw @a {"text":"Check this out! A magical Pokéball appears, and you can use it to capture a mob!","color":"green"}

    give @p minecraft:cow_spawn_egg 16
    give @p minecraft:chicken_spawn_egg 16
}

function rainbow_red{
    givetnt <Rainbow : Missile Man TNT> 110020 rainbow_red
    tellraw @a {"text":"Get ready for a blast! A mob that can launch missiles is coming your way!","color":"green"}
}
function rainbow_cyan{
    givetnt <Rainbow : Dinosaur TNT> 110021 rainbow_cyan
    tellraw @a {"text":"Get ready for prehistoric fun! A dinosaur is about to appear!","color":"green"}
}


function shader_on_creeper{
    spawnpoint @s ~ ~ ~ ~ 
    gamemode spectator @s 
    summon creeper ~ ~ ~ {NoAI:1b, Tags:["toggle_shader"]}
    spectate @e[tag=toggle_shader, limit=1]
    tag @s add on_shader
    gamerule doImmediateRespawn true
    sequence{
        delay 10t
        kill @a[tag=on_shader]
        gamerule doImmediateRespawn false
        delay 10t
        tp @e[type=creeper, tag=toggle_shader] ~ ~-600 ~
        gamemode survival @a[tag=on_shader]
        tag @a[tag=on_shader] remove on_shader
    }
}
function shader_off_creeper{
    spawnpoint @s ~ ~ ~ ~ 
    gamemode spectator @s 
    summon sheep ~ ~ ~ {NoAI:1b, Tags:["toggle_shader_undo"]}
    spectate @e[tag=toggle_shader_undo, limit=1]
    tag @s add on_shader_undo
    gamerule doImmediateRespawn true
    sequence{
        delay 10t
        kill @a[tag=on_shader_undo]
        gamerule doImmediateRespawn false
        delay 10t
        tp @e[type=sheep, tag=toggle_shader_undo] ~ ~-600 ~
        gamemode survival @a[tag=on_shader_undo]
        tag @a[tag=on_shader_undo] remove on_shader_undo
    }
}

function kill_models{
    kill @e[type=#models_logic:aj_mobs,tag=aj_mob]
    execute as @e[type=#animated_java:root,tag=aj.crewmate_aqua.root] run function animated_java:crewmate_aqua/remove/this
    execute as @e[type=#animated_java:root,tag=aj.backdoor.root] run function animated_java:backdoor/remove/this
    execute as @e[type=#animated_java:root,tag=aj.bowser.root] run function animated_java:bowser/remove/this
    execute as @e[type=#animated_java:root,tag=aj.huggy_wuggy.root] run function animated_java:huggy_wuggy/remove/this
    execute as @e[type=#animated_java:root,tag=aj.mutant_creeper.root] run function animated_java:mutant_creeper/remove/this
    execute as @e[type=#animated_java:root,tag=aj.pikachu.root] run function animated_java:pikachu/remove/this
    execute as @e[type=#animated_java:root,tag=aj.crewmate_purple.root] run function animated_java:crewmate_purple/remove/this
    execute as @e[type=#animated_java:root,tag=aj.rainbow_cyan.root] run function animated_java:rainbow_cyan/remove/this
    execute as @e[type=#animated_java:root,tag=aj.rainbow_red.root] run function animated_java:rainbow_red/remove/this
    execute as @e[type=#animated_java:root,tag=aj.roblox_noob.root] run function animated_java:roblox_noob/remove/this
    execute as @e[type=#animated_java:root,tag=aj.crewmate_yellow.root] run function animated_java:crewmate_yellow/remove/this
    execute as @e[type=#animated_java:root,tag=aj.zelda.root] run function animated_java:zelda/remove/this
    execute as @e[type=#animated_java:root,tag=aj.fnaf_bonnie.root] run function animated_java:fnaf_bonnie/remove/this
    execute as @e[type=#animated_java:root,tag=aj.fnaf_freddy.root] run function animated_java:fnaf_freddy/remove/this
}

function death_anim{
    sequence{
        LOOP(6,i){
            execute as @a[tag=viewing_animation] run{
                title @a times 1 20 1
                <%%
                    emit(`title @a title {"text":"\\uEff${i+2}"}`)
                    if(i === 5){
                        emit(`kill @s`)
                    }
                %%>
                
            }
            delay 10t
        }
        
    }
}

# Bowser Shoot Logic
function bowser_shooting{
    # cannon firing
    execute as @e[type=#models_logic:aj_mobs,tag=bowser,tag=aj_mob] at @s anchored eyes positioned ^ ^ ^1 if entity @a[distance=..9] run{
        summon fireball ~ ~1 ~ {Tags:["bowser_fireball"]}
        scoreboard players set @s fireattacktime 60
        particle cloud ~ ~1 ~ 0.5 0.5 0.5 0.1 40 force
    }
    execute as @e[type=fireball, tag=bowser_fireball, tag=!tag_added] at @s rotated as @e[type=#models_logic:aj_mobs, tag=bowser,tag=aj_mob, limit=1, sort=nearest] run{
        execute store result score @s pos_x1 run data get entity @s Pos[0] 1000
        execute store result score @s pos_y1 run data get entity @s Pos[1] 1000
        execute store result score @s pos_z1 run data get entity @s Pos[2] 1000

        tp @s ^ ^-0.04 ^0.1

        execute store result score @s pos_x2 run data get entity @s Pos[0] 1000
        execute store result score @s pos_y2 run data get entity @s Pos[1] 1000
        execute store result score @s pos_z2 run data get entity @s Pos[2] 1000

        scoreboard players operation @s pos_x2 -= @s pos_x1
        scoreboard players operation @s pos_y2 -= @s pos_y1
        scoreboard players operation @s pos_z2 -= @s pos_z1 

        execute store result entity @s power[0] double 0.003 run scoreboard players get @s pos_x2
        execute store result entity @s power[1] double 0.003 run scoreboard players get @s pos_y2
        execute store result entity @s power[2] double 0.003 run scoreboard players get @s pos_z2 

        tag @s add tag_added
    }
}

function tp_to_base{
    spawnpoint @a -48 64 32
    tp @p -48 64 32
}
function tp_to_ship{
    spawnpoint @a 209 255 -112
    tp @p 209 255 -112
}

# Exit Maze
function exit_backrooms_maze{
    title @a title {"text": "Congratulations!", "color": "gold"}
    title @a subtitle {"text": "You have completed the maze!", "color": "gold"}
    kill @e[type=husk, tag=backdoor] 
    spawnpoint @a 209 255 -112
    tp @p 209 255 -112
    playsound minecraft:ui.toast.challenge_complete master @a 209 255 -112
}
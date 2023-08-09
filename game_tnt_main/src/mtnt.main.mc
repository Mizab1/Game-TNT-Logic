import ./macros/rngV2.mcm
import ./macros/private_macros.mcm

function load{
    # Make a Dummy scoreboard of Fuse Timer
    scoreboard objectives add LANG_MC_INTERNAL dummy

    scoreboard objectives add fuse_time dummy
    scoreboard objectives add rng_score dummy
    scoreboard objectives add private dummy
    scoreboard objectives add hurt_time_llama dummy

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
    # storm TNT
    execute at @e[type=item_display, tag=storm] as @a[distance=15..] run{
        effect give @s[distance=10..] instant_damage 1 0 true
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

    # darkness TNT
    execute as @e[type=block_display, tag=darkness_radius] at @s if entity @a[distance=..5] run{
        effect give @a[distance=..5] darkness 2 1 true
        effect give @a[distance=..5] blindness 2 1 true
    }

    # loot llama
    execute as @e[type=llama, tag=loot_llama] at @s run{
        execute store result score @s hurt_time_llama run data get entity @s HurtTime
        execute if score @s hurt_time_llama matches 10 run{
            loot spawn ~ ~ ~ loot minecraft:loot_llama
        }
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
                        function getRandomNumberExcludingRange(min, max, excludeMin, excludeMax) {
                            let randomNum;
                            do {
                                randomNum = Math.floor(Math.random() * (max - min + 1)) + min;
                            } while (randomNum >= excludeMin && randomNum <= excludeMax);
                            return randomNum;
                        }
                        function randomNumber(min, max) {
                            return (Math.random() * (max - min) + min).toFixed(3);
                        }
                        for(let i = 0; i <= 6; i++){
                            for(let key in plushies){
                                emit(`summon item_display ~${getRandomNumberExcludingRange(-15, 15, -5, 5)} ~0.5 ~${getRandomNumberExcludingRange(-15, 15, -5, 5)} {NoGravity:0b, item_display:"fixed",Rotation:[${randomNumber(-180, 180)}F,0F],item:{id:"minecraft:wooden_hoe",Count:1b,tag:{CustomModelData:${plushies[key]}}}}`)
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
                            emit(`summon llama ~${randomNumber(-15, 15)} ~ ~${randomNumber(-15, 15)} {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[${randomNumber(-180, 180)}F,0F], Attributes:[{Name:generic.max_health,Base:8}]}`)
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
                        for (let i = 0; i < 25; i++) {
                            emit(`summon cow ~ ~ ~ {Motion:[${Math.random().toFixed(1)},${Math.random().toFixed(1)},${Math.random().toFixed(1)}], Tags:["roblox_cow"],CustomName:'{"text":"Roblox Cow","color":"gold","italic":false}'}`)
                            emit(`summon pig ~ ~ ~ {Motion:[${Math.random().toFixed(1)},${Math.random().toFixed(1)},${Math.random().toFixed(1)}], Tags:["roblox_cow"],CustomName:'{"text":"Roblox Pig","color":"gold","italic":false}'}`)
                            emit(`summon villager ~ ~ ~ {Motion:[${Math.random().toFixed(1)},${Math.random().toFixed(1)},${Math.random().toFixed(1)}], Tags:["roblox_villager"],CustomName:'{"text":"Roblox Villager","color":"gold"}',VillagerData:{level:99,profession:"minecraft:butcher"}}`)
                            
                        }

                        // replace block
                        for (let x = 0; x <= 50; x++) {
                            for (let z = 0; z <= 50; z++) {
                                emit(`execute positioned ~${x - 25} ~-1 ~${z - 25} run fill ~ ~ ~ ~ ~ ~ yellow_concrete replace #mtnt.main:all_but_air`)
                            }
                        }
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

function fnaf_animatronics{
    givetnt <Five Nights At Freddys: Animatronics TNT> 110005 fnaf_animatronics
    tellraw @s {"text":"Spawn bunch of Animatronics","color":"green"}
}
function fnaf_darkness{
    givetnt <Five Nights At Freddys: Darkness TNT> 110006 fnaf_darkness
    tellraw @s {"text":"Alive Animatronics!!","color":"green"}
}

function fortnite_storm{
    givetnt <Fortnite : Storm TNT> 110007 fortnite_storm
    tellraw @s {"text":"Storm which damages the player outside the radius. The storm will be gone after 20 secs","color":"green"}
}
function fortnite_llama{
    givetnt <Fortnite : Llama TNT> 110008 fortnite_llama
    tellraw @s {"text":"Spawns llama that gives loots","color":"green"}
}

function roblox_animal{
    givetnt <Roblox : Animal TNT> 110009 roblox_animal
    tellraw @s {"text":"Spawns many roblox animals","color":"green"}
}
function roblox_noob{
    givetnt <Roblox : Noob TNT> 110010 roblox_noob
    tellraw @s {"text":"Spawns Roblox Noob","color":"green"}
}

function minecraft_creeper{
    givetnt <Minecraft : Mutant Creeper TNT> 110011 minecraft_creeper
    tellraw @s {"text":"Spawns Mutant Creeper","color":"green"}
}
function minecraft_endermen{
    givetnt <Minecraft : Enderman TNT> 110012 minecraft_endermen
    tellraw @s {"text":"Teleports the player randomly","color":"green"}
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


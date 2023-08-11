#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon llama ~-8.074 ~ ~9.409 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-91.615F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-9.088 ~ ~1.264 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-50.884F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-6.455 ~ ~6.518 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[11.379F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-3.475 ~ ~-0.690 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-83.440F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~7.412 ~ ~-13.607 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-149.601F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-3.831 ~ ~-13.680 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-139.046F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-9.345 ~ ~3.076 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-6.931F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~12.506 ~ ~-7.481 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[150.954F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~3.331 ~ ~9.444 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-103.643F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-11.083 ~ ~8.196 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[101.371F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
tellraw @a {"text":"Loot llama spawned", "color":"gold"}
kill @s
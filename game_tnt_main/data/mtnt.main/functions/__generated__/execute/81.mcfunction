#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon llama ~-3.837 ~ ~-4.133 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-14.239F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~4.387 ~ ~10.622 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[124.318F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~10.493 ~ ~14.178 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[55.859F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~13.084 ~ ~-2.122 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[24.220F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-4.030 ~ ~-10.174 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[0.318F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-3.594 ~ ~-10.890 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[23.576F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~10.425 ~ ~0.547 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[173.017F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~2.080 ~ ~-7.066 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[101.544F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~8.877 ~ ~-10.347 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-55.547F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-4.290 ~ ~-7.081 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-170.737F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
tellraw @a {"text":"Loot llama spawned", "color":"gold"}
kill @s
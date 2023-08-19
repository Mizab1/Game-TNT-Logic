#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon llama ~6.410 ~ ~-1.485 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-75.221F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~5.173 ~ ~-5.460 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[72.900F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-5.740 ~ ~5.556 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[130.094F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~2.309 ~ ~-4.440 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-176.006F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-2.290 ~ ~3.084 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-37.015F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~0.878 ~ ~0.172 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[71.374F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~6.459 ~ ~5.936 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-109.430F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-7.891 ~ ~1.071 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[132.308F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~7.198 ~ ~5.399 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[68.039F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~3.349 ~ ~-3.242 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[105.772F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
tellraw @a {"text":"Loot llama spawned", "color":"gold"}
kill @s
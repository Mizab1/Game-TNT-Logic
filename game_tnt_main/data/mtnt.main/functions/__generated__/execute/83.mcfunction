#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon llama ~4.904 ~ ~-10.489 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-49.583F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-10.488 ~ ~6.842 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[27.667F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~8.627 ~ ~8.974 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[78.786F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~2.588 ~ ~9.590 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-75.951F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-4.499 ~ ~1.234 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-163.863F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-10.373 ~ ~-0.940 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[150.201F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-3.038 ~ ~-9.311 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[27.876F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-9.218 ~ ~-13.477 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[43.268F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-8.402 ~ ~-10.576 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-95.256F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-11.922 ~ ~-13.323 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-102.328F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
tellraw @a {"text":"Loot llama spawned", "color":"gold"}
kill @s
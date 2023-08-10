#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon llama ~5.811 ~ ~-0.132 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-139.380F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-1.253 ~ ~-9.907 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-155.848F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~3.489 ~ ~6.672 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[52.230F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~4.029 ~ ~-10.913 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-179.407F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-5.712 ~ ~3.452 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[98.464F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-4.012 ~ ~-7.667 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-140.854F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~2.604 ~ ~6.965 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-156.149F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-12.324 ~ ~-7.887 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[144.208F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-5.132 ~ ~9.667 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-74.168F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~13.805 ~ ~4.976 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[64.418F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
tellraw @a {"text":"Loot llama spawned", "color":"gold"}
kill @s
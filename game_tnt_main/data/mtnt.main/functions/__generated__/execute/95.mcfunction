#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon llama ~-7.719 ~ ~7.756 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-45.273F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~1.570 ~ ~-0.637 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-4.446F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-5.182 ~ ~5.859 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[67.721F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~6.873 ~ ~-2.374 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-3.213F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-1.660 ~ ~3.866 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-167.873F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-7.290 ~ ~-5.834 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[178.136F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-4.125 ~ ~5.557 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-13.096F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-7.005 ~ ~-4.349 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[113.900F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~0.511 ~ ~-2.251 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-11.142F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~4.331 ~ ~-0.849 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[58.526F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
tellraw @a {"text":"Loot llama spawned", "color":"gold"}
kill @s
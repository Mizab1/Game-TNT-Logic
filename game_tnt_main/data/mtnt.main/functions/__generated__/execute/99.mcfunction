#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon llama ~2.306 ~ ~-6.356 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[179.914F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-6.514 ~ ~-5.866 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-71.564F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~3.552 ~ ~-7.377 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[134.757F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~1.860 ~ ~-0.673 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[142.405F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-7.268 ~ ~-7.399 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[48.043F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-3.010 ~ ~-3.024 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[121.686F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-3.890 ~ ~5.234 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[79.207F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~7.632 ~ ~-1.840 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[17.109F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-5.223 ~ ~-3.180 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-119.327F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-4.955 ~ ~-5.820 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-138.514F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
tellraw @a {"text":"Loot llama spawned", "color":"gold"}
kill @s
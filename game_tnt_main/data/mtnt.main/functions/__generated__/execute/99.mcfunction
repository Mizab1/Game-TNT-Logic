#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon llama ~6.302 ~ ~-4.562 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-61.296F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~7.399 ~ ~1.623 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-0.351F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-4.681 ~ ~-7.321 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[10.618F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~6.214 ~ ~7.206 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-158.976F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-0.639 ~ ~6.708 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-10.496F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~5.361 ~ ~-7.809 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[145.653F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-7.534 ~ ~-3.701 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[124.962F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-5.379 ~ ~1.045 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[120.088F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~6.400 ~ ~7.274 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-1.514F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-7.956 ~ ~-1.693 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[143.251F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
tellraw @a {"text":"Loot llama spawned", "color":"gold"}
kill @s
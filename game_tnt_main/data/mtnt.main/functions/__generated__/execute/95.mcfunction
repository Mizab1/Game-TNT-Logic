#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon llama ~-7.301 ~ ~7.535 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[71.992F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-6.792 ~ ~-7.629 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-111.876F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-3.958 ~ ~4.127 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[140.148F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~6.772 ~ ~-3.494 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[16.358F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~5.482 ~ ~7.730 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-85.527F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-5.254 ~ ~-6.531 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[145.781F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-2.426 ~ ~-4.761 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[81.969F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~3.089 ~ ~-3.969 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[106.190F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-5.045 ~ ~-5.421 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-25.348F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~0.990 ~ ~-6.071 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[154.860F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
tellraw @a {"text":"Loot llama spawned", "color":"gold"}
kill @s
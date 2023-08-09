#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon llama ~12.024 ~ ~-0.442 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[169.841F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~4.149 ~ ~5.668 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-76.038F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~3.384 ~ ~-10.664 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-152.153F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~0.298 ~ ~8.255 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-28.125F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-5.449 ~ ~-12.237 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-36.458F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-11.132 ~ ~7.584 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-147.782F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~4.283 ~ ~-2.601 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-166.843F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~3.993 ~ ~-1.585 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-41.535F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-3.736 ~ ~6.188 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[18.426F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-5.694 ~ ~2.530 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-30.042F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
tellraw @a {"text":"Loot llama spawned", "color":"gold"}
kill @s
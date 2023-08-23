#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon llama ~-7.886 ~ ~-6.735 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-143.817F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~7.453 ~ ~5.350 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-79.493F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~7.025 ~ ~0.025 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[37.206F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-4.439 ~ ~6.334 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-47.860F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-5.245 ~ ~-3.367 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-123.419F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-0.078 ~ ~4.739 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-36.682F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~2.647 ~ ~0.720 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-100.991F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-0.703 ~ ~-0.797 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[156.777F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~2.385 ~ ~1.812 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[11.226F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-4.931 ~ ~1.000 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-124.917F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
tellraw @a {"text":"Loot llama spawned", "color":"gold"}
kill @s
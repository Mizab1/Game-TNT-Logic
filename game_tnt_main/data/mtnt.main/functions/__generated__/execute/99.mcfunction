#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon llama ~-5.744 ~ ~5.875 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[83.395F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-7.639 ~ ~2.619 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[62.049F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~6.665 ~ ~-7.325 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[169.470F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-4.032 ~ ~5.921 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-65.692F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~5.137 ~ ~6.552 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[148.564F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~2.140 ~ ~-4.625 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-28.487F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-7.734 ~ ~1.089 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[15.249F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~5.748 ~ ~1.649 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-150.263F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-3.288 ~ ~-4.113 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[86.848F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~5.248 ~ ~-7.605 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-52.596F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
tellraw @a {"text":"Loot llama spawned", "color":"gold"}
kill @s
#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon llama ~5.776 ~ ~3.978 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[131.812F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-0.173 ~ ~-4.725 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-152.449F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~0.491 ~ ~2.409 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[178.280F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~0.800 ~ ~-3.867 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[156.541F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-0.094 ~ ~-6.219 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[136.663F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-3.087 ~ ~-1.135 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-53.910F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-0.354 ~ ~-5.665 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-34.111F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~2.306 ~ ~-5.563 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[40.327F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-1.346 ~ ~0.845 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[51.560F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~2.595 ~ ~5.465 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[177.434F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
tellraw @a {"text":"Loot llama spawned", "color":"gold"}
kill @s
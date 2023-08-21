#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon llama ~-0.768 ~ ~0.636 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[150.500F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~4.184 ~ ~-3.244 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[12.512F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-5.908 ~ ~-3.504 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[59.444F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-5.239 ~ ~-7.685 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[58.170F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-3.373 ~ ~-3.429 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-23.525F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~4.602 ~ ~4.726 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-121.867F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-5.343 ~ ~2.877 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-28.501F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-7.108 ~ ~1.063 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-142.156F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-1.773 ~ ~-5.137 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[153.836F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~4.979 ~ ~6.617 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-137.387F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
tellraw @a {"text":"Loot llama spawned", "color":"gold"}
kill @s
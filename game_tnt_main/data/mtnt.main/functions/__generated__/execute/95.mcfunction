#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon llama ~6.761 ~ ~3.733 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[160.091F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~6.688 ~ ~-2.739 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[176.178F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-7.218 ~ ~-2.236 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[141.159F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-2.956 ~ ~-4.608 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[160.187F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~6.988 ~ ~-6.907 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[172.183F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~7.448 ~ ~-5.742 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-158.098F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~5.013 ~ ~5.843 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[21.303F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-4.392 ~ ~5.530 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[47.677F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-4.105 ~ ~-3.423 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[131.355F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-1.600 ~ ~6.603 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[90.228F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
tellraw @a {"text":"Loot llama spawned", "color":"gold"}
kill @s
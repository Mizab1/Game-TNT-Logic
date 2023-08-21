#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon llama ~0.718 ~ ~-6.669 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-130.948F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~5.819 ~ ~4.374 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[96.835F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~5.845 ~ ~7.036 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[52.842F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~1.521 ~ ~-5.145 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-175.449F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-7.913 ~ ~-6.816 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-111.869F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~6.752 ~ ~-1.976 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[122.857F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-0.329 ~ ~-1.282 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-59.269F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-2.969 ~ ~5.330 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[109.291F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-7.171 ~ ~-5.609 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[99.613F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~6.622 ~ ~3.212 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-4.755F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
tellraw @a {"text":"Loot llama spawned", "color":"gold"}
kill @s
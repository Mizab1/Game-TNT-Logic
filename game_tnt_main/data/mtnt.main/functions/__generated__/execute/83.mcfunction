#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon llama ~-2.955 ~ ~3.853 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[158.161F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~7.603 ~ ~-4.623 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-151.489F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-0.218 ~ ~-7.075 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[111.779F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-1.001 ~ ~-6.381 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-4.509F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~5.326 ~ ~-6.902 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-105.134F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~2.036 ~ ~6.788 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[85.974F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-6.110 ~ ~-7.380 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-25.001F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-6.029 ~ ~-1.114 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-149.098F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~3.976 ~ ~-3.505 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[9.623F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-5.716 ~ ~-1.861 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[42.098F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
tellraw @a {"text":"Loot llama spawned", "color":"gold"}
kill @s
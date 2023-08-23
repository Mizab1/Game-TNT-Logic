#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon llama ~1.739 ~ ~-3.634 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[138.681F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-2.235 ~ ~-6.346 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[126.678F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-5.058 ~ ~6.551 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-29.249F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-4.434 ~ ~-7.679 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-43.660F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-2.163 ~ ~-1.260 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-10.584F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-4.859 ~ ~1.919 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-134.815F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~3.043 ~ ~5.837 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[143.021F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~5.402 ~ ~4.948 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[121.698F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~6.057 ~ ~-7.877 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-32.610F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~1.988 ~ ~7.680 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama", "tp_ignore"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[5.537F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
tellraw @a {"text":"Loot llama spawned", "color":"gold"}
kill @s
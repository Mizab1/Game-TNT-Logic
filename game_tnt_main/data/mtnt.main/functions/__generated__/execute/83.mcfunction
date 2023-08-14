#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon llama ~13.290 ~ ~-11.105 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[91.999F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-4.997 ~ ~-10.351 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-109.992F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-9.473 ~ ~-1.805 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-114.161F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~8.845 ~ ~4.202 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[161.563F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~10.949 ~ ~5.249 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[173.914F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~1.356 ~ ~-8.336 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[100.445F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-13.261 ~ ~3.717 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-62.213F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~14.431 ~ ~-9.681 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[134.879F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~14.546 ~ ~-12.862 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[2.896F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
summon llama ~-7.007 ~ ~-4.265 {DeathLootTable:"minecraft:bat", Health:8f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[52.390F,0F], Attributes:[{Name:generic.max_health,Base:8}]}
tellraw @a {"text":"Loot llama spawned", "color":"gold"}
kill @s
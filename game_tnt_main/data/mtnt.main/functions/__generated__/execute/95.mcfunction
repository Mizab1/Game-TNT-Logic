#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon llama ~-5.145 ~ ~1.869 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-134.282F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~6.813 ~ ~-2.953 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[36.219F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-6.882 ~ ~1.122 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-166.012F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~5.993 ~ ~-6.828 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[64.105F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~6.997 ~ ~-6.378 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-128.048F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~4.380 ~ ~-0.031 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[154.565F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~5.995 ~ ~1.159 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-162.794F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-7.922 ~ ~3.052 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-147.719F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~-1.934 ~ ~-4.004 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[-168.017F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
summon llama ~4.614 ~ ~-1.172 {DeathLootTable:"minecraft:bat", Health:18f, NoAI:1b,Variant:0,Tags:["loot_llama"],CustomName:'{"text":"Loot Llama","color":"gold","italic":false}', Rotation:[112.325F,0F], Attributes:[{Name:generic.max_health,Base:18}]}
tellraw @a {"text":"Loot llama spawned", "color":"gold"}
kill @s
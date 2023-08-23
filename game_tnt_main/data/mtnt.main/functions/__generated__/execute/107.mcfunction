#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon husk ~ ~ ~ {Motion:[0.7,0.9,0.6],DeathLootTable:"minecraft:bat", Silent:1b,Health:20f,Tags:["new","aj_mob","roblox_noob"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:999999,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:20}, {Name:generic.attack_damage,Base:50}]}
summon husk ~ ~ ~ {Motion:[0.6,0.2,0.4],DeathLootTable:"minecraft:bat", Silent:1b,Health:20f,Tags:["new","aj_mob","roblox_noob"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:999999,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:20}, {Name:generic.attack_damage,Base:50}]}
summon husk ~ ~ ~ {Motion:[0.3,0.5,0.1],DeathLootTable:"minecraft:bat", Silent:1b,Health:20f,Tags:["new","aj_mob","roblox_noob"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:999999,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:20}, {Name:generic.attack_damage,Base:50}]}
kill @s
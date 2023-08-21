#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon fox ~ ~ ~ {Motion:[0.6,0.8,0.5], Tags:["roblox_fox"]}
summon cow ~ ~ ~ {Motion:[0.8,0.4,0.9], Tags:["roblox_cow"], CustomName:'{"text":"Cow"}'}
execute positioned ~-3.530 ~-2.169 ~2.037 run function models_logic:summon/elephant
execute positioned ~-7.916 ~-0.490 ~-12.426 run function models_logic:summon/penguin
execute positioned ~-7.274 ~1.251 ~13.135 run function models_logic:summon/deer
summon fox ~ ~ ~ {Motion:[0.7,0.6,0.6], Tags:["roblox_fox"]}
summon cow ~ ~ ~ {Motion:[0.9,0.2,0.9], Tags:["roblox_cow"], CustomName:'{"text":"Cow"}'}
execute positioned ~4.080 ~-1.792 ~6.971 run function models_logic:summon/elephant
execute positioned ~13.665 ~-2.209 ~-13.357 run function models_logic:summon/penguin
execute positioned ~-1.454 ~-12.481 ~-0.911 run function models_logic:summon/deer
execute positioned ~-25 ~-1 ~-25 run fill ~ ~ ~ ~50 ~ ~50 yellow_concrete replace #mtnt.main:all_but_air
kill @s
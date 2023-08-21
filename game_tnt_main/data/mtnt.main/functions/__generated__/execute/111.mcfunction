#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon marker ~ ~ ~ {Tags:["enderman_marker"]}
summon enderman ~ ~ ~ {Motion:[0.70, 0.69, 0.83], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.79, 0.30, 0.16], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.87, 0.98, 0.79], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.50, 0.89, 0.42], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.29, 0.91, 0.07], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.60, 0.14, 0.51], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.72, 0.36, 0.72], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.80, 0.51, 0.82], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.87, 0.34, 0.43], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.00, 0.44, 0.25], Tags:["endermen"]}
playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.8
tellraw @a {"text":"Nausea Warning", "color":"red"}
schedule function mtnt.main:__generated__/sequence/202 60t replace
schedule function mtnt.main:__generated__/sequence/203 160t replace
schedule function mtnt.main:__generated__/sequence/204 260t replace
schedule function mtnt.main:__generated__/sequence/205 360t replace
schedule function mtnt.main:__generated__/sequence/206 460t replace
schedule function mtnt.main:__generated__/sequence/207 560t replace
kill @s
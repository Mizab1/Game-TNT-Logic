#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon marker ~ ~ ~ {Tags:["enderman_marker"]}
summon enderman ~ ~ ~ {Motion:[1.00, 0.36, 0.61], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.69, 0.04, 0.99], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.24, 0.43, 0.09], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.65, 0.64, 0.13], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.23, 0.98, 0.57], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.80, 0.91, 0.85], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.57, 0.31, 0.54], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.89, 1.00, 0.74], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.79, 0.73, 0.92], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.73, 0.88, 0.48], Tags:["endermen"]}
playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.8
tellraw @a {"text":"Nausea Warning", "color":"red"}
schedule function mtnt.main:__generated__/sequence/202 60t replace
schedule function mtnt.main:__generated__/sequence/203 160t replace
schedule function mtnt.main:__generated__/sequence/204 260t replace
schedule function mtnt.main:__generated__/sequence/205 360t replace
schedule function mtnt.main:__generated__/sequence/206 460t replace
schedule function mtnt.main:__generated__/sequence/207 560t replace
kill @s
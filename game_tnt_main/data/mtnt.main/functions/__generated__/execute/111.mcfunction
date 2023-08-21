#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon marker ~ ~ ~ {Tags:["enderman_marker"]}
summon enderman ~ ~ ~ {Motion:[0.31, 0.06, 0.26], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.63, 0.98, 0.03], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.53, 0.14, 0.98], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[1.00, 0.49, 0.74], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.65, 0.43, 0.24], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.73, 0.67, 0.13], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.77, 0.12, 0.76], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.06, 0.09, 0.16], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.32, 0.99, 0.24], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.30, 0.62, 1.00], Tags:["endermen"]}
playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.8
tellraw @a {"text":"Nausea Warning", "color":"red"}
schedule function mtnt.main:__generated__/sequence/202 60t replace
schedule function mtnt.main:__generated__/sequence/203 160t replace
schedule function mtnt.main:__generated__/sequence/204 260t replace
schedule function mtnt.main:__generated__/sequence/205 360t replace
schedule function mtnt.main:__generated__/sequence/206 460t replace
schedule function mtnt.main:__generated__/sequence/207 560t replace
kill @s
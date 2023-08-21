#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon marker ~ ~ ~ {Tags:["enderman_marker"]}
summon enderman ~ ~ ~ {Motion:[0.55, 0.84, 0.80], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.50, 0.65, 0.38], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.57, 0.20, 0.92], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.53, 0.07, 0.05], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.18, 0.02, 0.28], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.68, 0.52, 0.47], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.95, 0.27, 0.72], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.65, 0.14, 0.08], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.55, 0.57, 0.85], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.68, 0.50, 0.57], Tags:["endermen"]}
playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.8
tellraw @a {"text":"Nausea Warning", "color":"red"}
schedule function mtnt.main:__generated__/sequence/202 60t replace
schedule function mtnt.main:__generated__/sequence/203 160t replace
schedule function mtnt.main:__generated__/sequence/204 260t replace
schedule function mtnt.main:__generated__/sequence/205 360t replace
schedule function mtnt.main:__generated__/sequence/206 460t replace
schedule function mtnt.main:__generated__/sequence/207 560t replace
kill @s
#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon marker ~ ~ ~ {Tags:["enderman_marker"]}
summon enderman ~ ~ ~ {Motion:[0.83, 0.52, 1.00], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.34, 0.61, 0.80], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.59, 0.16, 0.00], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.11, 0.18, 0.12], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.64, 0.22, 0.47], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.59, 0.96, 0.49], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.08, 0.21, 0.60], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.32, 0.82, 0.13], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.23, 0.27, 0.66], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.59, 0.75, 0.89], Tags:["endermen"]}
playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.8
tellraw @a {"text":"Nausea Warning", "color":"red"}
schedule function mtnt.main:__generated__/sequence/202 60t replace
schedule function mtnt.main:__generated__/sequence/203 160t replace
schedule function mtnt.main:__generated__/sequence/204 260t replace
schedule function mtnt.main:__generated__/sequence/205 360t replace
schedule function mtnt.main:__generated__/sequence/206 460t replace
schedule function mtnt.main:__generated__/sequence/207 560t replace
kill @s
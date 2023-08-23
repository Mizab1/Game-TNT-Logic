#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon marker ~ ~ ~ {Tags:["enderman_marker"]}
summon enderman ~ ~ ~ {Motion:[0.94, 0.98, 0.24], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.82, 0.38, 0.36], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.19, 0.01, 0.28], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.36, 0.30, 0.00], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.12, 0.75, 0.64], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.45, 0.67, 0.61], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.78, 0.14, 0.71], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.18, 0.65, 0.18], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.57, 0.43, 0.02], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.67, 0.95, 0.75], Tags:["endermen"]}
playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.8
tellraw @a {"text":"Nausea Warning", "color":"red"}
schedule function mtnt.main:__generated__/sequence/202 60t replace
schedule function mtnt.main:__generated__/sequence/203 160t replace
schedule function mtnt.main:__generated__/sequence/204 260t replace
schedule function mtnt.main:__generated__/sequence/205 360t replace
schedule function mtnt.main:__generated__/sequence/206 460t replace
schedule function mtnt.main:__generated__/sequence/207 560t replace
kill @s
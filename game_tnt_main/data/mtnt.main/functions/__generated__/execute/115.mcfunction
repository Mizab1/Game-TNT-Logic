#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon marker ~ ~ ~ {Tags:["enderman_marker"]}
summon enderman ~ ~ ~ {Motion:[0.64, 0.91, 0.15], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.55, 0.08, 0.77], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.77, 0.62, 0.93], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.94, 0.68, 0.28], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.86, 0.58, 0.12], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.76, 0.63, 0.13], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.24, 0.72, 0.97], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.87, 0.02, 0.66], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.33, 0.75, 0.64], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.02, 0.25, 0.19], Tags:["endermen"]}
playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.8
tellraw @a {"text":"Nausea Warning", "color":"red"}
schedule function mtnt.main:__generated__/sequence/202 60t replace
schedule function mtnt.main:__generated__/sequence/203 160t replace
schedule function mtnt.main:__generated__/sequence/204 260t replace
schedule function mtnt.main:__generated__/sequence/205 360t replace
schedule function mtnt.main:__generated__/sequence/206 460t replace
schedule function mtnt.main:__generated__/sequence/207 560t replace
kill @s
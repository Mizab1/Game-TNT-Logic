#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon marker ~ ~ ~ {Tags:["enderman_marker"]}
summon enderman ~ ~ ~ {Motion:[0.31, 0.17, 0.98], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.63, 0.94, 0.36], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.13, 0.90, 0.18], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.07, 0.01, 0.63], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.88, 0.85, 0.20], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.43, 0.15, 0.48], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.51, 0.66, 0.06], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.42, 0.22, 0.69], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.50, 0.63, 0.42], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.42, 0.53, 0.89], Tags:["endermen"]}
playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.8
tellraw @a {"text":"Nausea Warning", "color":"red"}
schedule function mtnt.main:__generated__/sequence/202 60t replace
schedule function mtnt.main:__generated__/sequence/203 160t replace
schedule function mtnt.main:__generated__/sequence/204 260t replace
schedule function mtnt.main:__generated__/sequence/205 360t replace
schedule function mtnt.main:__generated__/sequence/206 460t replace
schedule function mtnt.main:__generated__/sequence/207 560t replace
kill @s
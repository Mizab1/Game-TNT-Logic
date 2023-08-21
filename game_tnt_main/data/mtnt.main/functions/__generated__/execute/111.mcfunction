#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon marker ~ ~ ~ {Tags:["enderman_marker"]}
summon enderman ~ ~ ~ {Motion:[0.04, 0.29, 1.00], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.21, 0.36, 0.63], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.94, 0.76, 0.68], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.64, 0.10, 0.79], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.57, 0.68, 0.29], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.22, 0.66, 0.18], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.66, 0.40, 0.78], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.54, 0.66, 0.01], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.88, 0.64, 0.11], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.43, 0.32, 0.65], Tags:["endermen"]}
playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.8
tellraw @a {"text":"Nausea Warning", "color":"red"}
schedule function mtnt.main:__generated__/sequence/202 60t replace
schedule function mtnt.main:__generated__/sequence/203 160t replace
schedule function mtnt.main:__generated__/sequence/204 260t replace
schedule function mtnt.main:__generated__/sequence/205 360t replace
schedule function mtnt.main:__generated__/sequence/206 460t replace
schedule function mtnt.main:__generated__/sequence/207 560t replace
kill @s
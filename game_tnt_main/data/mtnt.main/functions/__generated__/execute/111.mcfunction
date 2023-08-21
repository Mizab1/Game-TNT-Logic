#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon marker ~ ~ ~ {Tags:["enderman_marker"]}
summon enderman ~ ~ ~ {Motion:[0.97, 0.70, 0.29], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.08, 0.59, 0.29], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.39, 0.87, 0.38], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.79, 0.08, 0.72], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.25, 0.78, 0.25], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.69, 0.63, 0.27], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.59, 0.27, 0.59], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.93, 0.84, 0.59], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.76, 0.05, 0.22], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.94, 0.35, 0.89], Tags:["endermen"]}
playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.8
tellraw @a {"text":"Nausea Warning", "color":"red"}
schedule function mtnt.main:__generated__/sequence/202 60t replace
schedule function mtnt.main:__generated__/sequence/203 160t replace
schedule function mtnt.main:__generated__/sequence/204 260t replace
schedule function mtnt.main:__generated__/sequence/205 360t replace
schedule function mtnt.main:__generated__/sequence/206 460t replace
schedule function mtnt.main:__generated__/sequence/207 560t replace
kill @s
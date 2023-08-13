#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon marker ~ ~ ~ {Tags:["enderman_marker"]}
summon enderman ~ ~ ~ {Motion:[0.55, 0.39, 0.24], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.50, 0.41, 0.25], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.84, 0.39, 0.60], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.67, 0.56, 0.80], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.10, 0.84, 0.56], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.57, 0.47, 0.55], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.42, 0.22, 0.95], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.46, 0.06, 0.59], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.57, 0.01, 0.67], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.97, 0.01, 0.76], Tags:["endermen"]}
playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.8
tellraw @a {"text":"Nausea Warning", "color":"red"}
schedule function mtnt.main:__generated__/sequence/202 60t replace
schedule function mtnt.main:__generated__/sequence/203 160t replace
schedule function mtnt.main:__generated__/sequence/204 260t replace
schedule function mtnt.main:__generated__/sequence/205 360t replace
schedule function mtnt.main:__generated__/sequence/206 460t replace
schedule function mtnt.main:__generated__/sequence/207 560t replace
kill @s
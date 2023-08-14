#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon marker ~ ~ ~ {Tags:["enderman_marker"]}
summon enderman ~ ~ ~ {Motion:[0.96, 0.39, 0.24], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.47, 0.42, 0.32], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.39, 0.13, 0.66], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.61, 0.18, 0.56], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.03, 0.78, 0.81], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.78, 0.78, 0.98], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.27, 0.96, 0.34], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.65, 0.83, 0.46], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.61, 0.70, 0.67], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.73, 0.35, 0.60], Tags:["endermen"]}
playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.8
tellraw @a {"text":"Nausea Warning", "color":"red"}
schedule function mtnt.main:__generated__/sequence/202 60t replace
schedule function mtnt.main:__generated__/sequence/203 160t replace
schedule function mtnt.main:__generated__/sequence/204 260t replace
schedule function mtnt.main:__generated__/sequence/205 360t replace
schedule function mtnt.main:__generated__/sequence/206 460t replace
schedule function mtnt.main:__generated__/sequence/207 560t replace
kill @s
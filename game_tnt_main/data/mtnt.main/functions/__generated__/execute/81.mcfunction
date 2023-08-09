#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon marker ~ ~ ~ {Tags:["enderman_marker"]}
summon enderman ~ ~ ~ {Motion:[0.94, 0.57, 0.71], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.45, 0.60, 0.47], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.08, 0.01, 0.34], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.72, 0.92, 0.06], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.09, 0.78, 0.74], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.00, 0.33, 0.53], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.75, 0.40, 0.18], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[1.00, 0.39, 0.51], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.94, 0.66, 0.20], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.66, 0.18, 0.08], Tags:["endermen"]}
playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.8
tellraw @a {"text":"Nausea Warning", "color":"red"}
schedule function mtnt.main:__generated__/sequence/1 60t replace
schedule function mtnt.main:__generated__/sequence/2 160t replace
schedule function mtnt.main:__generated__/sequence/3 260t replace
schedule function mtnt.main:__generated__/sequence/4 360t replace
schedule function mtnt.main:__generated__/sequence/5 460t replace
schedule function mtnt.main:__generated__/sequence/6 560t replace
kill @s
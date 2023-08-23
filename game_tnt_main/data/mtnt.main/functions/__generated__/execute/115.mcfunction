#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon marker ~ ~ ~ {Tags:["enderman_marker"]}
summon enderman ~ ~ ~ {Motion:[0.39, 0.94, 0.23], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.98, 0.08, 0.32], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.60, 0.10, 0.32], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.29, 0.95, 0.52], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.80, 0.72, 0.68], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.50, 0.50, 0.30], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.15, 0.73, 0.40], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.42, 0.01, 0.45], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.22, 0.77, 0.25], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.04, 0.25, 0.50], Tags:["endermen"]}
playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.8
tellraw @a {"text":"Nausea Warning", "color":"red"}
schedule function mtnt.main:__generated__/sequence/202 60t replace
schedule function mtnt.main:__generated__/sequence/203 160t replace
schedule function mtnt.main:__generated__/sequence/204 260t replace
schedule function mtnt.main:__generated__/sequence/205 360t replace
schedule function mtnt.main:__generated__/sequence/206 460t replace
schedule function mtnt.main:__generated__/sequence/207 560t replace
kill @s
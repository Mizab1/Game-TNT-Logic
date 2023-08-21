#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon marker ~ ~ ~ {Tags:["enderman_marker"]}
summon enderman ~ ~ ~ {Motion:[0.39, 0.06, 0.07], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.75, 0.25, 0.60], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.91, 0.25, 0.87], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.30, 0.01, 0.79], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.02, 0.32, 0.50], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.94, 0.50, 0.73], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.71, 0.31, 0.06], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.87, 0.22, 0.57], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.18, 0.87, 0.41], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.69, 0.96, 0.90], Tags:["endermen"]}
playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.8
tellraw @a {"text":"Nausea Warning", "color":"red"}
schedule function mtnt.main:__generated__/sequence/202 60t replace
schedule function mtnt.main:__generated__/sequence/203 160t replace
schedule function mtnt.main:__generated__/sequence/204 260t replace
schedule function mtnt.main:__generated__/sequence/205 360t replace
schedule function mtnt.main:__generated__/sequence/206 460t replace
schedule function mtnt.main:__generated__/sequence/207 560t replace
kill @s
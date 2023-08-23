#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon marker ~ ~ ~ {Tags:["enderman_marker"]}
summon enderman ~ ~ ~ {Motion:[0.20, 0.06, 0.96], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.24, 0.43, 0.66], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.48, 0.73, 0.25], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.57, 0.20, 0.21], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.91, 0.11, 0.14], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.76, 0.08, 0.65], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.49, 0.50, 0.98], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.07, 0.49, 0.18], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.48, 0.48, 0.01], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.54, 0.29, 0.36], Tags:["endermen"]}
playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.8
tellraw @a {"text":"Nausea Warning", "color":"red"}
schedule function mtnt.main:__generated__/sequence/202 60t replace
schedule function mtnt.main:__generated__/sequence/203 160t replace
schedule function mtnt.main:__generated__/sequence/204 260t replace
schedule function mtnt.main:__generated__/sequence/205 360t replace
schedule function mtnt.main:__generated__/sequence/206 460t replace
schedule function mtnt.main:__generated__/sequence/207 560t replace
kill @s
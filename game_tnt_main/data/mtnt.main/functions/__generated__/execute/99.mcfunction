#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon marker ~ ~ ~ {Tags:["enderman_marker"]}
summon enderman ~ ~ ~ {Motion:[0.74, 0.03, 0.54], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.49, 0.76, 0.46], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.16, 0.22, 0.35], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.16, 0.91, 0.27], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.02, 0.33, 0.18], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.35, 0.69, 0.43], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.06, 0.16, 0.47], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.64, 0.03, 0.65], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.90, 0.65, 0.04], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.23, 0.31, 0.75], Tags:["endermen"]}
playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.8
tellraw @a {"text":"Nausea Warning", "color":"red"}
schedule function mtnt.main:__generated__/sequence/202 60t replace
schedule function mtnt.main:__generated__/sequence/203 160t replace
schedule function mtnt.main:__generated__/sequence/204 260t replace
schedule function mtnt.main:__generated__/sequence/205 360t replace
schedule function mtnt.main:__generated__/sequence/206 460t replace
schedule function mtnt.main:__generated__/sequence/207 560t replace
kill @s
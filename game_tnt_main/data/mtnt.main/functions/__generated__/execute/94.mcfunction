#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon marker ~ ~ ~ {Tags:["enderman_marker"]}
summon enderman ~ ~ ~ {Motion:[0.74, 0.83, 0.75], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.04, 0.18, 0.47], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.06, 0.63, 0.52], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.13, 0.58, 0.13], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.40, 0.33, 0.79], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.91, 0.44, 0.04], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.76, 0.34, 0.93], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.28, 0.36, 0.34], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.30, 0.98, 0.53], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.82, 0.30, 0.44], Tags:["endermen"]}
playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.8
tellraw @a {"text":"Nausea Warning", "color":"red"}
schedule function mtnt.main:__generated__/sequence/202 60t replace
schedule function mtnt.main:__generated__/sequence/203 160t replace
schedule function mtnt.main:__generated__/sequence/204 260t replace
schedule function mtnt.main:__generated__/sequence/205 360t replace
schedule function mtnt.main:__generated__/sequence/206 460t replace
schedule function mtnt.main:__generated__/sequence/207 560t replace
kill @s
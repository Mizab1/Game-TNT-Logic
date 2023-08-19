#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon marker ~ ~ ~ {Tags:["enderman_marker"]}
summon enderman ~ ~ ~ {Motion:[0.34, 0.18, 0.26], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.60, 0.04, 0.09], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.32, 0.58, 0.12], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.38, 0.05, 0.79], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.37, 0.87, 0.88], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.50, 0.14, 0.02], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.60, 0.46, 0.36], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.22, 0.19, 0.82], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.17, 0.67, 0.38], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.55, 0.72, 0.84], Tags:["endermen"]}
playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.8
tellraw @a {"text":"Nausea Warning", "color":"red"}
schedule function mtnt.main:__generated__/sequence/202 60t replace
schedule function mtnt.main:__generated__/sequence/203 160t replace
schedule function mtnt.main:__generated__/sequence/204 260t replace
schedule function mtnt.main:__generated__/sequence/205 360t replace
schedule function mtnt.main:__generated__/sequence/206 460t replace
schedule function mtnt.main:__generated__/sequence/207 560t replace
kill @s
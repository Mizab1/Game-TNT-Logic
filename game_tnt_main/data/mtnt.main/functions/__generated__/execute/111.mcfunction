#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon marker ~ ~ ~ {Tags:["enderman_marker"]}
summon enderman ~ ~ ~ {Motion:[0.23, 0.90, 0.34], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.75, 0.82, 0.81], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.80, 0.44, 0.09], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.53, 0.62, 0.11], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.69, 0.21, 0.75], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.84, 0.97, 0.15], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.02, 0.32, 0.77], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.46, 0.96, 0.29], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.39, 0.65, 0.97], Tags:["endermen"]}
summon enderman ~ ~ ~ {Motion:[0.20, 0.72, 0.05], Tags:["endermen"]}
playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.8
tellraw @a {"text":"Nausea Warning", "color":"red"}
schedule function mtnt.main:__generated__/sequence/202 60t replace
schedule function mtnt.main:__generated__/sequence/203 160t replace
schedule function mtnt.main:__generated__/sequence/204 260t replace
schedule function mtnt.main:__generated__/sequence/205 360t replace
schedule function mtnt.main:__generated__/sequence/206 460t replace
schedule function mtnt.main:__generated__/sequence/207 560t replace
kill @s
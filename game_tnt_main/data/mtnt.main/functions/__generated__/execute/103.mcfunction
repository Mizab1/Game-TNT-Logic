#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
summon fox ~ ~ ~ {Motion:[0.6,0.8,0.6], Tags:["roblox_fox"]}
summon cow ~ ~ ~ {Motion:[0.3,0.9,0.8], Tags:["roblox_cow"], CustomName:'{"text":"Cow"}'}
function models_logic:summon/elephant
function models_logic:summon/penguin
function models_logic:summon/deer
summon fox ~ ~ ~ {Motion:[0.8,1.0,0.7], Tags:["roblox_fox"]}
summon cow ~ ~ ~ {Motion:[0.9,0.4,0.7], Tags:["roblox_cow"], CustomName:'{"text":"Cow"}'}
function models_logic:summon/elephant
function models_logic:summon/penguin
function models_logic:summon/deer
execute positioned ~-25 ~-1 ~-25 run fill ~ ~ ~ ~50 ~ ~50 yellow_concrete replace #mtnt.main:all_but_air
kill @s
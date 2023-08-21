#built using mc-build (https://github.com/mc-build/mc-build)

kill @e[type=tnt, distance=..0.5]
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode master @a ~ ~ ~
setblock ~ ~-1 ~ structure_block[mode=load]{name:"minecraft:backrooms",posX:-2,posY:-48,posZ:-2,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
setblock ~ ~-2 ~ redstone_block
tp @a ~ ~-48 ~
setblock ~ ~-1 ~ air replace
execute as @a at @s run function mtnt.main:__generated__/execute/137
schedule function mtnt.main:__generated__/schedule/3 2s replace
kill @s
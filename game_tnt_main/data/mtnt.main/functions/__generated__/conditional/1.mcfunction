#built using mc-build (https://github.com/mc-build/mc-build)

tp @s @e[type=tnt,distance=..0.5,sort=nearest,limit=1]
execute store result score @s fuse_time run data get entity @e[type=tnt,distance=..0.5,limit=1] Fuse
execute if score @s fuse_time matches 3 run function mtnt.main:__generated__/execute/35
execute if score @s fuse_time matches 1 run function mtnt.main:__generated__/execute/37
scoreboard players set #execute LANG_MC_INTERNAL 1
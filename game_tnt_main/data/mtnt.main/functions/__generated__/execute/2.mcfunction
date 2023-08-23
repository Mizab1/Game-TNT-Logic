#built using mc-build (https://github.com/mc-build/mc-build)

execute if score @s missile_timer matches 7.. run function mtnt.main:__generated__/execute/3
execute unless score @s missile_timer matches 7.. run scoreboard players add @s missile_timer 1
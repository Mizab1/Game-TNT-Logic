#built using mc-build (https://github.com/mc-build/mc-build)

execute store result score @s llama_health run data get entity @s Health
execute if score @s llama_health matches ..10 run function mtnt.main:__generated__/execute/12
execute store result score @s hurt_time_llama run data get entity @s HurtTime
execute if score @s hurt_time_llama matches 10 run loot spawn ~ ~ ~ loot minecraft:loot_llama
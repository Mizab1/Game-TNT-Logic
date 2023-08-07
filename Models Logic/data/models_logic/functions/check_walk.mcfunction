execute store result score @s first.x run data get entity @s Pos[0] 100
execute store result score @s first.y run data get entity @s Pos[2] 100

execute if score @s first.x = @s second.x run scoreboard players set @s moving 0
execute if score @s first.y = @s second.y run scoreboard players set @s moving 0

execute unless score @s first.x = @s second.x run scoreboard players set @s moving 1
execute unless score @s first.y = @s second.y run scoreboard players set @s moving 1

scoreboard players operation @s second.x = @s first.x
scoreboard players operation @s second.y = @s first.y
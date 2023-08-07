execute unless entity @a[distance=..8] unless entity @e[type=iron_golem,distance=..6] if score @s models_logicing matches 0 positioned 23 -52 14 run function cw_paths:remove
execute unless entity @a[distance=..8] unless entity @e[type=iron_golem,distance=..6] if score @s models_logicing matches 0 positioned 23 -52 14 run function cw_paths:load_coords
execute unless entity @a[distance=..8] unless entity @e[type=iron_golem,distance=..6] if score @s models_logicing matches 0 at @s run function cw_paths:new_pather
execute unless entity @a[distance=..8] unless entity @e[type=iron_golem,distance=..6] if score @s models_logicing matches 0 at @s run scoreboard players set @s models_logicing 2

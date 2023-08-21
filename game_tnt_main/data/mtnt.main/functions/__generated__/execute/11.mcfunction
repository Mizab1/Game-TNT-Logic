#built using mc-build (https://github.com/mc-build/mc-build)

execute if data entity @s Item.tag.pokeball if entity @e[type=#aestd1:mobs, tag=!aj_mob, distance=..3] run function mtnt.main:__generated__/execute/12
execute if data entity @s Item.tag.loaded_pokeball unless block ~-1 ~-1 ~-1 air run function mtnt.main:load_poke_mob
execute if data entity @s Item.tag.loaded_pokeball unless block ~-1 ~-1 ~0 air run function mtnt.main:load_poke_mob
execute if data entity @s Item.tag.loaded_pokeball unless block ~-1 ~-1 ~1 air run function mtnt.main:load_poke_mob
execute if data entity @s Item.tag.loaded_pokeball unless block ~-1 ~0 ~-1 air run function mtnt.main:load_poke_mob
execute if data entity @s Item.tag.loaded_pokeball unless block ~-1 ~0 ~0 air run function mtnt.main:load_poke_mob
execute if data entity @s Item.tag.loaded_pokeball unless block ~-1 ~0 ~1 air run function mtnt.main:load_poke_mob
execute if data entity @s Item.tag.loaded_pokeball unless block ~-1 ~1 ~-1 air run function mtnt.main:load_poke_mob
execute if data entity @s Item.tag.loaded_pokeball unless block ~-1 ~1 ~0 air run function mtnt.main:load_poke_mob
execute if data entity @s Item.tag.loaded_pokeball unless block ~-1 ~1 ~1 air run function mtnt.main:load_poke_mob
execute if data entity @s Item.tag.loaded_pokeball unless block ~0 ~-1 ~-1 air run function mtnt.main:load_poke_mob
execute if data entity @s Item.tag.loaded_pokeball unless block ~0 ~-1 ~0 air run function mtnt.main:load_poke_mob
execute if data entity @s Item.tag.loaded_pokeball unless block ~0 ~-1 ~1 air run function mtnt.main:load_poke_mob
execute if data entity @s Item.tag.loaded_pokeball unless block ~0 ~0 ~-1 air run function mtnt.main:load_poke_mob
execute if data entity @s Item.tag.loaded_pokeball unless block ~0 ~0 ~0 air run function mtnt.main:load_poke_mob
execute if data entity @s Item.tag.loaded_pokeball unless block ~0 ~0 ~1 air run function mtnt.main:load_poke_mob
execute if data entity @s Item.tag.loaded_pokeball unless block ~0 ~1 ~-1 air run function mtnt.main:load_poke_mob
execute if data entity @s Item.tag.loaded_pokeball unless block ~0 ~1 ~0 air run function mtnt.main:load_poke_mob
execute if data entity @s Item.tag.loaded_pokeball unless block ~0 ~1 ~1 air run function mtnt.main:load_poke_mob
execute if data entity @s Item.tag.loaded_pokeball unless block ~1 ~-1 ~-1 air run function mtnt.main:load_poke_mob
execute if data entity @s Item.tag.loaded_pokeball unless block ~1 ~-1 ~0 air run function mtnt.main:load_poke_mob
execute if data entity @s Item.tag.loaded_pokeball unless block ~1 ~-1 ~1 air run function mtnt.main:load_poke_mob
execute if data entity @s Item.tag.loaded_pokeball unless block ~1 ~0 ~-1 air run function mtnt.main:load_poke_mob
execute if data entity @s Item.tag.loaded_pokeball unless block ~1 ~0 ~0 air run function mtnt.main:load_poke_mob
execute if data entity @s Item.tag.loaded_pokeball unless block ~1 ~0 ~1 air run function mtnt.main:load_poke_mob
execute if data entity @s Item.tag.loaded_pokeball unless block ~1 ~1 ~-1 air run function mtnt.main:load_poke_mob
execute if data entity @s Item.tag.loaded_pokeball unless block ~1 ~1 ~0 air run function mtnt.main:load_poke_mob
execute if data entity @s Item.tag.loaded_pokeball unless block ~1 ~1 ~1 air run function mtnt.main:load_poke_mob
tag @e[type=#aestd1:mobs, distance=..1] remove catched
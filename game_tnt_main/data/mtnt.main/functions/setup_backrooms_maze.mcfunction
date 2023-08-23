#built using mc-build (https://github.com/mc-build/mc-build)

tellraw @a {"text":"Try to find the exit button to exit the Maze", "color": "gold"}
tp @a -40 31 -4
execute positioned -22 31 16 run function models_logic:summon/backdoor
execute positioned -40 31 20 run function models_logic:summon/backdoor
execute positioned 2 31 2 run function models_logic:summon/backdoor
execute positioned -12 31 9 run function models_logic:summon/backdoor
execute as @a at @s run function mtnt.main:__generated__/execute/145
schedule function mtnt.main:__generated__/schedule/4 2s replace
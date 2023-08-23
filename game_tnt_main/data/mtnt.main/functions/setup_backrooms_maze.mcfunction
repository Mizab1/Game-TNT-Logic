#built using mc-build (https://github.com/mc-build/mc-build)

tellraw @a {"text":"Try to find the exit button to exit the Maze", "color": "gold"}
tp @a 40 10 -45
execute positioned 56 10 -34 run function models_logic:summon/backdoor
execute positioned 53 10 -11 run function models_logic:summon/backdoor
execute positioned 78 10 -14 run function models_logic:summon/backdoor
execute positioned 39 10 -21 run function models_logic:summon/backdoor
execute as @a at @s run function mtnt.main:__generated__/execute/145
schedule function mtnt.main:__generated__/schedule/4 2s replace
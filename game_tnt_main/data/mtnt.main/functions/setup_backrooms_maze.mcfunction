#built using mc-build (https://github.com/mc-build/mc-build)

tellraw @a {"text":"Try to find the exit button to exit the Maze", "color": "gold"}
tp @a 748 171 -88
execute positioned 776 171 -82 run function models_logic:summon/backdoor
execute positioned 763 171 -54 run function models_logic:summon/backdoor
execute positioned 755 171 -48 run function models_logic:summon/backdoor
execute as @a at @s run function mtnt.main:__generated__/execute/144
schedule function mtnt.main:__generated__/schedule/4 2s replace
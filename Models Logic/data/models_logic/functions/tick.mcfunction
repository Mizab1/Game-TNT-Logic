execute as @e[type=#models_logic:aj_mobs,tag=aqua,tag=aj_mob] at @s run function models_logic:ai/aqua
execute as @e[type=#models_logic:aj_mobs,tag=purple,tag=aj_mob] at @s run function models_logic:ai/purple
execute as @e[type=#models_logic:aj_mobs,tag=yellow,tag=aj_mob] at @s run function models_logic:ai/yellow
execute as @e[type=#models_logic:aj_mobs,tag=huggy_wuggy,tag=aj_mob] at @s run function models_logic:ai/huggy_wuggy

execute as @e[type=#models_logic:aj_mobs, tag=new,tag=aj_mob] at @s run function models_logic:new

# execute as @e[type=pig, tag=aj.huggy_wuggy.locator.attack_smear] run kill

execute as @e[type=item_display, tag=aj.crewmate_aqua.root] at @s unless entity @e[type=#models_logic:aj_mobs,tag=aqua,tag=aj_mob,distance=..1] run function animated_java:crewmate_aqua/zzzzzzzz/remove/as_root
execute as @e[type=item_display, tag=aj.crewmate_purple.root] at @s unless entity @e[type=#models_logic:aj_mobs,tag=purple,tag=aj_mob,distance=..1] run function animated_java:crewmate_purple/zzzzzzzz/remove/as_root
execute as @e[type=item_display, tag=aj.crewmate_yellow.root] at @s unless entity @e[type=#models_logic:aj_mobs,tag=yellow,tag=aj_mob,distance=..1] run function animated_java:crewmate_yellow/zzzzzzzz/remove/as_root
execute as @e[type=item_display, tag=aj.huggy_wuggy.root] at @s unless entity @e[type=#models_logic:aj_mobs,tag=huggy_wuggy,tag=aj_mob,distance=..1] run function animated_java:huggy_wuggy/zzzzzzzz/remove/as_root
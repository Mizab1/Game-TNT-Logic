execute as @e[type=#models_logic:aj_mobs,tag=aqua,tag=aj_mob] at @s run function models_logic:ai/aqua
execute as @e[type=#models_logic:aj_mobs,tag=purple,tag=aj_mob] at @s run function models_logic:ai/purple
execute as @e[type=#models_logic:aj_mobs,tag=yellow,tag=aj_mob] at @s run function models_logic:ai/yellow
execute as @e[type=#models_logic:aj_mobs,tag=huggy_wuggy,tag=aj_mob] at @s run function models_logic:ai/huggy_wuggy
execute as @e[type=#models_logic:aj_mobs,tag=roblox_noob,tag=aj_mob] at @s run function models_logic:ai/roblox_noob
execute as @e[type=#models_logic:aj_mobs,tag=mutant_creeper,tag=aj_mob] at @s run function models_logic:ai/mutant_creeper
execute as @e[type=#models_logic:aj_mobs,tag=bowser,tag=aj_mob] at @s run function models_logic:ai/bowser
execute as @e[type=#models_logic:aj_mobs,tag=zelda,tag=aj_mob] at @s run function models_logic:ai/zelda
execute as @e[type=#models_logic:aj_mobs,tag=backdoor,tag=aj_mob] at @s run function models_logic:ai/backdoor
execute as @e[type=#models_logic:aj_mobs,tag=pikachu,tag=aj_mob] at @s run function models_logic:ai/pikachu
execute as @e[type=#models_logic:aj_mobs,tag=rainbow_red,tag=aj_mob] at @s run function models_logic:ai/rainbow_red
execute as @e[type=#models_logic:aj_mobs,tag=rainbow_cyan,tag=aj_mob] at @s run function models_logic:ai/rainbow_cyan
execute as @e[type=#models_logic:aj_mobs,tag=elephant,tag=aj_mob] at @s run function models_logic:ai/elephant
execute as @e[type=#models_logic:aj_mobs,tag=penguin,tag=aj_mob] at @s run function models_logic:ai/penguin
execute as @e[type=#models_logic:aj_mobs,tag=deer,tag=aj_mob] at @s run function models_logic:ai/deer


execute as @e[type=#models_logic:aj_mobs, tag=new,tag=aj_mob] at @s run function models_logic:new

execute as @e[type=pig, tag=aj.huggy_wuggy.locator.attack_smear] run effect give @s invisibility infinite 1 true

execute as @e[type=item_display, tag=aj.crewmate_aqua.root] at @s unless entity @e[type=#models_logic:aj_mobs,tag=aqua,tag=aj_mob,distance=..1] run function animated_java:crewmate_aqua/zzzzzzzz/remove/as_root
execute as @e[type=item_display, tag=aj.crewmate_purple.root] at @s unless entity @e[type=#models_logic:aj_mobs,tag=purple,tag=aj_mob,distance=..1] run function animated_java:crewmate_purple/zzzzzzzz/remove/as_root
execute as @e[type=item_display, tag=aj.crewmate_yellow.root] at @s unless entity @e[type=#models_logic:aj_mobs,tag=yellow,tag=aj_mob,distance=..1] run function animated_java:crewmate_yellow/zzzzzzzz/remove/as_root
execute as @e[type=item_display, tag=aj.huggy_wuggy.root] at @s unless entity @e[type=#models_logic:aj_mobs,tag=huggy_wuggy,tag=aj_mob,distance=..1] run function animated_java:huggy_wuggy/zzzzzzzz/remove/as_root
execute as @e[type=item_display, tag=aj.roblox_noob.root] at @s unless entity @e[type=#models_logic:aj_mobs,tag=roblox_noob,tag=aj_mob,distance=..1] run function animated_java:roblox_noob/zzzzzzzz/remove/as_root
execute as @e[type=item_display, tag=aj.mutant_creeper.root] at @s unless entity @e[type=#models_logic:aj_mobs,tag=mutant_creeper,tag=aj_mob,distance=..1] run function animated_java:mutant_creeper/zzzzzzzz/remove/as_root
execute as @e[type=item_display, tag=aj.bowser.root] at @s unless entity @e[type=#models_logic:aj_mobs,tag=bowser,tag=aj_mob,distance=..1] run function animated_java:bowser/zzzzzzzz/remove/as_root
execute as @e[type=item_display, tag=aj.zelda.root] at @s unless entity @e[type=#models_logic:aj_mobs,tag=zelda,tag=aj_mob,distance=..1] run function animated_java:zelda/zzzzzzzz/remove/as_root
execute as @e[type=item_display, tag=aj.backdoor.root] at @s unless entity @e[type=#models_logic:aj_mobs,tag=backdoor,tag=aj_mob,distance=..1] run function animated_java:backdoor/zzzzzzzz/remove/as_root
execute as @e[type=item_display, tag=aj.pikachu.root] at @s unless entity @e[type=#models_logic:aj_mobs,tag=pikachu,tag=aj_mob,distance=..1] run function animated_java:pikachu/zzzzzzzz/remove/as_root
execute as @e[type=item_display, tag=aj.rainbow_red.root] at @s unless entity @e[type=#models_logic:aj_mobs,tag=rainbow_red,tag=aj_mob,distance=..1] run function animated_java:rainbow_red/zzzzzzzz/remove/as_root
execute as @e[type=item_display, tag=aj.rainbow_cyan.root] at @s unless entity @e[type=#models_logic:aj_mobs,tag=rainbow_cyan,tag=aj_mob,distance=..1] run function animated_java:rainbow_cyan/zzzzzzzz/remove/as_root
execute as @e[type=item_display, tag=aj.elephant.root] at @s unless entity @e[type=#models_logic:aj_mobs,tag=elephant,tag=aj_mob,distance=..1] run function animated_java:elephant/zzzzzzzz/remove/as_root
execute as @e[type=item_display, tag=aj.penguin.root] at @s unless entity @e[type=#models_logic:aj_mobs,tag=penguin,tag=aj_mob,distance=..1] run function animated_java:penguin/zzzzzzzz/remove/as_root
execute as @e[type=item_display, tag=aj.deer.root] at @s unless entity @e[type=#models_logic:aj_mobs,tag=deer,tag=aj_mob,distance=..1] run function animated_java:deer/zzzzzzzz/remove/as_root
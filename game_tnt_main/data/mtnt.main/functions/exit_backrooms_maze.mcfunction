#built using mc-build (https://github.com/mc-build/mc-build)

title @a title {"text": "Congratulations!", "color": "gold"}
title @a subtitle {"text": "You have completed the maze!", "color": "gold"}
kill @e[type=husk, tag=backdoor]
spawnpoint @a 209 255 -112
tp @p 209 255 -112
playsound minecraft:ui.toast.challenge_complete master @a 209 255 -112
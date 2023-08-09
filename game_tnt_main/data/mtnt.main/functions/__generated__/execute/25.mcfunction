#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players operation temp0 rng = state rng
scoreboard players operation temp0 rng *= a rng
scoreboard players operation temp0 rng += c rng
scoreboard players operation temp0 rng %= m rng
scoreboard players operation state rng = temp0 rng
scoreboard players operation modified_fuse rng_score = temp0 rng
scoreboard players operation modified_fuse rng_score /= #100000 rng
scoreboard players set min rng 20
scoreboard players set max rng 61
scoreboard players operation size rng = max rng
scoreboard players operation size rng -= min rng
scoreboard players operation modified_fuse rng_score %= size rng
scoreboard players operation modified_fuse rng_score += min rng
execute as @e[type=tnt, tag=!modified, distance=..0.5,limit=1]
function mtnt.main:__generated__/block/0
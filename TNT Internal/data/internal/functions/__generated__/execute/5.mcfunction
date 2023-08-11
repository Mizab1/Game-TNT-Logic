#built using mc-build (https://github.com/mc-build/mc-build)

summon creeper ~ ~ ~ {ExplosionRadius:-1b,Fuse:1,ignited:1b,Tags:["lasercreeper"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:4000,ShowParticles:0b}]}
kill @s
schedule function internal:__generated__/schedule/0 2t append
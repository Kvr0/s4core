#> raycasting:block/findloop/hit_check
# @within function raycasting:block/findloop/**

## Check
    execute at @e[tag=raycasting.temp,limit=1] unless block ~ ~ ~ #raycasting:air run function raycasting:block/findloop/hit

#execute at @e[tag=raycasting.temp,limit=1] run summon armor_stand ~ ~ ~ {Tags:[loop],NoGravity:1b,Small:1b,Invisible:1b}

#> raycasting:block/findloop/hit_check
# @within function raycasting:block/findloop/**

## Check
    execute at @e[tag=raycasting.temp,limit=1] run function #raycasting:block/hit_check
## Hit
    execute if data storage raycasting: result{hit:1b} run function raycasting:block/findloop/hit

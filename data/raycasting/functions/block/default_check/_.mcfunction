#> raycasting:block/default_check/_
# @within tag/function raycasting:block/hit_check

## Air Check
    execute unless block ~ ~ ~ #raycasting:air run data modify storage raycasting: result.hit set value 1b

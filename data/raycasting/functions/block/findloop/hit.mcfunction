#> raycasting:block/findloop/hit
# @within function raycasting:block/findloop/_

## Flag
    execute if data storage calculation: hit.flags{x:-1b} run data modify storage raycasting: result.face set value px
    execute if data storage calculation: hit.flags{y:-1b} run data modify storage raycasting: result.face set value py
    execute if data storage calculation: hit.flags{z:-1b} run data modify storage raycasting: result.face set value pz
    execute if data storage calculation: hit.flags{x:1b} run data modify storage raycasting: result.face set value mx
    execute if data storage calculation: hit.flags{y:1b} run data modify storage raycasting: result.face set value my
    execute if data storage calculation: hit.flags{z:1b} run data modify storage raycasting: result.face set value mz

## Pos
    data modify storage raycasting: result.raw set from entity @e[tag=raycasting.temp,limit=1] Pos
    execute store result storage raycasting: result.pos[0] int 1 run data get storage raycasting: result.raw[0] 1
    execute store result storage raycasting: result.pos[1] int 1 run data get storage raycasting: result.raw[1] 1
    execute store result storage raycasting: result.pos[2] int 1 run data get storage raycasting: result.raw[2] 1

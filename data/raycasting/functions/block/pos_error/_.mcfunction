#> raycasting:block/pos_error/_
# @within function raycasting:block/_

## 整数部
    data modify storage calculation: pos_error set from entity @e[tag=raycasting.temp,limit=1] Pos
    execute store result score $raycasting:block/pos_error/_.pos[0] temporary run data get storage calculation: pos_error[0] 1
    execute store result score $raycasting:block/pos_error/_.pos[1] temporary run data get storage calculation: pos_error[1] 1
    execute store result score $raycasting:block/pos_error/_.pos[2] temporary run data get storage calculation: pos_error[2] 1

## TPs
    execute as @e[tag=raycasting.temp,limit=1] run function raycasting:block/pos_error/tps/x
    execute as @e[tag=raycasting.temp,limit=1] run function raycasting:block/pos_error/tps/y
    execute as @e[tag=raycasting.temp,limit=1] run function raycasting:block/pos_error/tps/z

## 小数部
    data modify storage raycasting: result.startpos set from entity @e[tag=raycasting.temp,limit=1] Pos

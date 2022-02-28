#> raycasting:distance/loop
# @within function raycasting:distance/_

## Increment
    scoreboard players add $raycasting:distance/_ temporary 1

## 判定
    execute unless entity @e[tag=raycasting.target,distance=..0.5] positioned ^ ^ ^1 run function raycasting:distance/loop

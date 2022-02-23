#> raycasting:block/findloop/multipass/y
# @within function raycasting:block/findloop/multipass/loop

## 距離を無限遠上に
    scoreboard players set $raycasting:block/findloop/multipass/_.dist[1] temporary 2147483647

## PassCount
    scoreboard players remove $raycasting:block/findloop/_.passcount temporary 1

## 判定
    execute if data storage calculation: flags{y:-1b} as @e[tag=raycasting.temp,limit=1] at @s run tp @s ~ ~-1 ~
    execute if data storage calculation: flags{y:1b} as @e[tag=raycasting.temp,limit=1] at @s run tp @s ~ ~1 ~
    data modify storage calculation: hit.flags set value {x:0b,y:0b,z:0b}
    data modify storage calculation: hit.flags.y set from storage calculation: flags.y
    function raycasting:block/findloop/hit_check

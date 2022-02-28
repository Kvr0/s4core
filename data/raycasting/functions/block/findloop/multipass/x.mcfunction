#> raycasting:block/findloop/multipass/x
# @within function raycasting:block/findloop/multipass/loop

## 距離を無限遠上に
    scoreboard players set $raycasting:block/findloop/multipass/_.dist[0] temporary 2147483647

## PassCount
    scoreboard players remove $raycasting:block/findloop/_.passcount temporary 1

## 判定
    execute if data storage calculation: flags{x:-1b} as @e[tag=raycasting.temp,limit=1] at @s run tp @s ~-1 ~ ~
    execute if data storage calculation: flags{x:1b} as @e[tag=raycasting.temp,limit=1] at @s run tp @s ~1 ~ ~
    data modify storage calculation: hit.flags set value {x:0b,y:0b,z:0b}
    data modify storage calculation: hit.flags.x set from storage calculation: flags.x
    function raycasting:block/findloop/hit_check

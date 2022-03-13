#> raycasting:distance/_
# @api

## Open
    function calculation:session/open

## 変数初期化
#> 結果
    data modify storage raycasting: result set value {distance:0}
#> 距離
    scoreboard players set $raycasting:distance/_ temporary -1

## Loop
    execute if entity @e[tag=raycasting.target] facing entity @e[tag=raycasting.target] feet run function raycasting:distance/loop

## 結果
    execute store result storage raycasting: result.distance int 1 run scoreboard players get $raycasting:distance/_ temporary

## Close
    function calculation:session/close

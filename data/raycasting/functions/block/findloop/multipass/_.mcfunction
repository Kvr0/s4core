#> raycasting:block/findloop/multipass/_
# @within function raycasting:block/findloop/**

## 面までの距離を取得
#> 複製
    scoreboard players operation $raycasting:block/findloop/multipass/_.dist[0] temporary = $raycasting:block/_.pos[0] temporary
    scoreboard players operation $raycasting:block/findloop/multipass/_.dist[1] temporary = $raycasting:block/_.pos[1] temporary
    scoreboard players operation $raycasting:block/findloop/multipass/_.dist[2] temporary = $raycasting:block/_.pos[2] temporary
#> 距離に変換
    execute if score $raycasting:block/_.dir[0] temporary matches 1.. run scoreboard players operation $raycasting:block/findloop/multipass/_.dist[0] temporary -= $raycasting:block/_.accuracy temporary
    execute if score $raycasting:block/_.dir[1] temporary matches 1.. run scoreboard players operation $raycasting:block/findloop/multipass/_.dist[1] temporary -= $raycasting:block/_.accuracy temporary
    execute if score $raycasting:block/_.dir[2] temporary matches 1.. run scoreboard players operation $raycasting:block/findloop/multipass/_.dist[2] temporary -= $raycasting:block/_.accuracy temporary
    scoreboard players set $-1 temporary -1
    execute if score $raycasting:block/findloop/multipass/_.dist[0] temporary matches ..-1 run scoreboard players operation $raycasting:block/findloop/multipass/_.dist[0] temporary *= $-1 temporary
    execute if score $raycasting:block/findloop/multipass/_.dist[1] temporary matches ..-1 run scoreboard players operation $raycasting:block/findloop/multipass/_.dist[1] temporary *= $-1 temporary
    execute if score $raycasting:block/findloop/multipass/_.dist[2] temporary matches ..-1 run scoreboard players operation $raycasting:block/findloop/multipass/_.dist[2] temporary *= $-1 temporary

## 方向を複製
    scoreboard players operation $raycasting:block/findloop/multipass/_.clonedir[0] temporary = $raycasting:block/_.dir[0] temporary
    scoreboard players operation $raycasting:block/findloop/multipass/_.clonedir[1] temporary = $raycasting:block/_.dir[1] temporary
    scoreboard players operation $raycasting:block/findloop/multipass/_.clonedir[2] temporary = $raycasting:block/_.dir[2] temporary
    execute if score $raycasting:block/findloop/multipass/_.clonedir[0] temporary matches ..-1 run scoreboard players operation $raycasting:block/findloop/multipass/_.clonedir[0] temporary *= $-1 temporary
    execute if score $raycasting:block/findloop/multipass/_.clonedir[1] temporary matches ..-1 run scoreboard players operation $raycasting:block/findloop/multipass/_.clonedir[1] temporary *= $-1 temporary
    execute if score $raycasting:block/findloop/multipass/_.clonedir[2] temporary matches ..-1 run scoreboard players operation $raycasting:block/findloop/multipass/_.clonedir[2] temporary *= $-1 temporary

## 時間変数の初期化
    scoreboard players set $raycasting:block/findloop/multipass/_.time[0] temporary 0
    scoreboard players set $raycasting:block/findloop/multipass/_.time[1] temporary 0
    scoreboard players set $raycasting:block/findloop/multipass/_.time[2] temporary 0

## ループ
    function raycasting:block/findloop/multipass/loop

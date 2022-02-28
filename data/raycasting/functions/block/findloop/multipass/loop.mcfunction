#> raycasting:block/findloop/multipass/loop
# @within function raycasting:block/findloop/multipass/**

## 時間取得
    scoreboard players operation $raycasting:block/findloop/multipass/_.time[0] temporary = $raycasting:block/findloop/multipass/_.dist[0] temporary
    scoreboard players operation $raycasting:block/findloop/multipass/_.time[1] temporary = $raycasting:block/findloop/multipass/_.dist[1] temporary
    scoreboard players operation $raycasting:block/findloop/multipass/_.time[2] temporary = $raycasting:block/findloop/multipass/_.dist[2] temporary
    scoreboard players operation $raycasting:block/findloop/multipass/_.time[0] temporary /= $raycasting:block/findloop/multipass/_.clonedir[0] temporary
    scoreboard players operation $raycasting:block/findloop/multipass/_.time[1] temporary /= $raycasting:block/findloop/multipass/_.clonedir[1] temporary
    scoreboard players operation $raycasting:block/findloop/multipass/_.time[2] temporary /= $raycasting:block/findloop/multipass/_.clonedir[2] temporary
#> 修正
    execute if data storage calculation: flags{x:0b} run scoreboard players set $raycasting:block/findloop/multipass/_.time[0] temporary 2147483647
    execute if data storage calculation: flags{y:0b} run scoreboard players set $raycasting:block/findloop/multipass/_.time[1] temporary 2147483647
    execute if data storage calculation: flags{z:0b} run scoreboard players set $raycasting:block/findloop/multipass/_.time[2] temporary 2147483647
    execute if score $raycasting:block/findloop/multipass/_.clonedir[0] temporary matches 0 run scoreboard players set $raycasting:block/findloop/multipass/_.time[0] temporary 2147483647
    execute if score $raycasting:block/findloop/multipass/_.clonedir[1] temporary matches 0 run scoreboard players set $raycasting:block/findloop/multipass/_.time[1] temporary 2147483647
    execute if score $raycasting:block/findloop/multipass/_.clonedir[2] temporary matches 0 run scoreboard players set $raycasting:block/findloop/multipass/_.time[2] temporary 2147483647

## 判定
#> 同値カウント
    scoreboard players set $raycasting:block/findloop/multipass/loop.samecount temporary 0
    execute if score $raycasting:block/findloop/multipass/_.time[0] temporary = $raycasting:block/findloop/multipass/_.time[1] temporary run scoreboard players add $raycasting:block/findloop/multipass/loop.samecount temporary 1
    execute if score $raycasting:block/findloop/multipass/_.time[1] temporary = $raycasting:block/findloop/multipass/_.time[2] temporary run scoreboard players add $raycasting:block/findloop/multipass/loop.samecount temporary 1
    execute if score $raycasting:block/findloop/multipass/_.time[2] temporary = $raycasting:block/findloop/multipass/_.time[0] temporary run scoreboard players add $raycasting:block/findloop/multipass/loop.samecount temporary 1
#> X,Y,Z
    execute if score $raycasting:block/findloop/multipass/loop.samecount temporary matches 0 if score $raycasting:block/findloop/multipass/_.time[0] temporary < $raycasting:block/findloop/multipass/_.time[1] temporary if score $raycasting:block/findloop/multipass/_.time[0] temporary < $raycasting:block/findloop/multipass/_.time[2] temporary run function raycasting:block/findloop/multipass/x
    execute if score $raycasting:block/findloop/multipass/loop.samecount temporary matches 0 if score $raycasting:block/findloop/multipass/_.time[1] temporary < $raycasting:block/findloop/multipass/_.time[0] temporary if score $raycasting:block/findloop/multipass/_.time[1] temporary < $raycasting:block/findloop/multipass/_.time[2] temporary run function raycasting:block/findloop/multipass/y
    execute if score $raycasting:block/findloop/multipass/loop.samecount temporary matches 0 if score $raycasting:block/findloop/multipass/_.time[2] temporary < $raycasting:block/findloop/multipass/_.time[0] temporary if score $raycasting:block/findloop/multipass/_.time[2] temporary < $raycasting:block/findloop/multipass/_.time[1] temporary run function raycasting:block/findloop/multipass/z
#> 複数
    execute if score $raycasting:block/findloop/multipass/loop.samecount temporary matches 1.. run function raycasting:block/findloop/multipass/multi

## ループ
    execute unless data storage raycasting: result{hit:1b} if score $raycasting:block/findloop/_.passcount temporary matches 1.. run function raycasting:block/findloop/multipass/loop

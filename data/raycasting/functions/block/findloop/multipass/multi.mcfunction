#> raycasting:block/findloop/multipass/multi
# @within function raycasting:block/findloop/multipass/loop

#> 精度変更
    scoreboard players set $10 temporary 10
    scoreboard players operation $raycasting:block/findloop/multipass/_.clonedir[0] temporary /= $10 temporary
    scoreboard players operation $raycasting:block/findloop/multipass/_.clonedir[1] temporary /= $10 temporary
    scoreboard players operation $raycasting:block/findloop/multipass/_.clonedir[2] temporary /= $10 temporary

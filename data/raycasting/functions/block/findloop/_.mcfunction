#> raycasting:block/findloop/_
# @within function raycasting:block/_

## 距離
    scoreboard players add $raycasting:block/_.distance temporary 1

## 次点取得
    scoreboard players operation $raycasting:block/findloop/_.nextpos[0] temporary = $raycasting:block/_.pos[0] temporary
    scoreboard players operation $raycasting:block/findloop/_.nextpos[1] temporary = $raycasting:block/_.pos[1] temporary
    scoreboard players operation $raycasting:block/findloop/_.nextpos[2] temporary = $raycasting:block/_.pos[2] temporary
    scoreboard players operation $raycasting:block/findloop/_.nextpos[0] temporary += $raycasting:block/_.dir[0] temporary
    scoreboard players operation $raycasting:block/findloop/_.nextpos[1] temporary += $raycasting:block/_.dir[1] temporary
    scoreboard players operation $raycasting:block/findloop/_.nextpos[2] temporary += $raycasting:block/_.dir[2] temporary

## 通過チェック
#> フラグの初期化
    data modify storage calculation: flags set value {x:0b,y:0b,z:0b}
#> フラグの設定
    execute if score $raycasting:block/findloop/_.nextpos[0] temporary matches ..-1 run data modify storage calculation: flags.x set value -1b
    execute if score $raycasting:block/findloop/_.nextpos[0] temporary >= $raycasting:block/_.accuracy temporary run data modify storage calculation: flags.x set value 1b
    execute if score $raycasting:block/findloop/_.nextpos[1] temporary matches ..-1 run data modify storage calculation: flags.y set value -1b
    execute if score $raycasting:block/findloop/_.nextpos[1] temporary >= $raycasting:block/_.accuracy temporary run data modify storage calculation: flags.y set value 1b
    execute if score $raycasting:block/findloop/_.nextpos[2] temporary matches ..-1 run data modify storage calculation: flags.z set value -1b
    execute if score $raycasting:block/findloop/_.nextpos[2] temporary >= $raycasting:block/_.accuracy temporary run data modify storage calculation: flags.z set value 1b
#> 通過カウント
    scoreboard players set $raycasting:block/findloop/_.passcount temporary 0
    execute unless data storage calculation: flags{x:0b} run scoreboard players add $raycasting:block/findloop/_.passcount temporary 1
    execute unless data storage calculation: flags{y:0b} run scoreboard players add $raycasting:block/findloop/_.passcount temporary 1
    execute unless data storage calculation: flags{z:0b} run scoreboard players add $raycasting:block/findloop/_.passcount temporary 1
### チェック
#> 1か所通過
    execute if score $raycasting:block/findloop/_.passcount temporary matches 1 if data storage calculation: flags{x:-1b} as @e[tag=raycasting.temp,limit=1] at @s run tp @s ~-1 ~ ~
    execute if score $raycasting:block/findloop/_.passcount temporary matches 1 if data storage calculation: flags{y:-1b} as @e[tag=raycasting.temp,limit=1] at @s run tp @s ~ ~-1 ~
    execute if score $raycasting:block/findloop/_.passcount temporary matches 1 if data storage calculation: flags{z:-1b} as @e[tag=raycasting.temp,limit=1] at @s run tp @s ~ ~ ~-1
    execute if score $raycasting:block/findloop/_.passcount temporary matches 1 if data storage calculation: flags{x:1b} as @e[tag=raycasting.temp,limit=1] at @s run tp @s ~1 ~ ~
    execute if score $raycasting:block/findloop/_.passcount temporary matches 1 if data storage calculation: flags{y:1b} as @e[tag=raycasting.temp,limit=1] at @s run tp @s ~ ~1 ~
    execute if score $raycasting:block/findloop/_.passcount temporary matches 1 if data storage calculation: flags{z:1b} as @e[tag=raycasting.temp,limit=1] at @s run tp @s ~ ~ ~1
    execute if score $raycasting:block/findloop/_.passcount temporary matches 1 run data modify storage calculation: hit.flags set from storage calculation: flags
    execute if score $raycasting:block/findloop/_.passcount temporary matches 1 run function raycasting:block/findloop/hit_check
#> 複数通過
    execute if score $raycasting:block/findloop/_.passcount temporary matches 2.. run function raycasting:block/findloop/multipass/_

## 位置修正
    scoreboard players operation $raycasting:block/findloop/_.nextpos[0] temporary %= $raycasting:block/_.accuracy temporary
    scoreboard players operation $raycasting:block/findloop/_.nextpos[1] temporary %= $raycasting:block/_.accuracy temporary
    scoreboard players operation $raycasting:block/findloop/_.nextpos[2] temporary %= $raycasting:block/_.accuracy temporary
    scoreboard players operation $raycasting:block/_.pos[0] temporary = $raycasting:block/findloop/_.nextpos[0] temporary
    scoreboard players operation $raycasting:block/_.pos[1] temporary = $raycasting:block/findloop/_.nextpos[1] temporary
    scoreboard players operation $raycasting:block/_.pos[2] temporary = $raycasting:block/findloop/_.nextpos[2] temporary

## 探索ループ
    execute unless data storage raycasting: result{hit:1b} if score $raycasting:block/_.distance temporary < $raycasting:block/_.maxdistance temporary run function raycasting:block/findloop/_

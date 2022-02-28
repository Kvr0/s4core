#> raycasting:block/_
# 視線先のブロックを探索
# @api

## 計算用エンティティ作成
    summon marker ~ ~ ~ {Tags:[raycasting.temp]}

## 変数初期化
#> 結果
    data modify storage raycasting: result set value {hit:0b,startpos:[],dir:[],pos:[0,0,0],face:none}
#> 精度
    scoreboard players set $raycasting:block/_.accuracy temporary 1000000000
#> 開始位置
    execute as @e[tag=raycasting.temp,limit=1] at @s run function raycasting:block/pos_error/_
#> 計算位置
    execute store result score $raycasting:block/_.pos[0] temporary run data get storage raycasting: result.startpos[0] 1000000000
    execute store result score $raycasting:block/_.pos[1] temporary run data get storage raycasting: result.startpos[1] 1000000000
    execute store result score $raycasting:block/_.pos[2] temporary run data get storage raycasting: result.startpos[2] 1000000000
    scoreboard players operation $raycasting:block/_.pos[0] temporary %= $raycasting:block/_.accuracy temporary
    scoreboard players operation $raycasting:block/_.pos[1] temporary %= $raycasting:block/_.accuracy temporary
    scoreboard players operation $raycasting:block/_.pos[2] temporary %= $raycasting:block/_.accuracy temporary
#> 実行方向
    tp @e[tag=raycasting.temp,limit=1] 0.0 0.0 0.0 ~ ~
    execute as @e[tag=raycasting.temp,limit=1] at @s run tp @s ^ ^ ^1 ~ ~
    data modify storage raycasting: result.dir set from entity @e[tag=raycasting.temp,limit=1] Pos
    execute store result score $raycasting:block/_.dir[0] temporary run data get storage raycasting: result.dir[0] 1000000000
    execute store result score $raycasting:block/_.dir[1] temporary run data get storage raycasting: result.dir[1] 1000000000
    execute store result score $raycasting:block/_.dir[2] temporary run data get storage raycasting: result.dir[2] 1000000000
#> 距離
    scoreboard players set $raycasting:block/_.distance temporary 0
    execute unless score $raycasting:block/_.maxdistance temporary matches 1.. run scoreboard players set $raycasting:block/_.maxdistance temporary 50

## 探索ループ
    tp @e[tag=raycasting.temp,limit=1] ~ ~ ~ ~ ~
    execute at @e[tag=raycasting.temp,limit=1] run function raycasting:block/findloop/_

## 計算用エンティティ削除
    kill @e[tag=raycasting.temp]

## リセット
    function calculation:reset/_

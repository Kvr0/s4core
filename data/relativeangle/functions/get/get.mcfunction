#> relativeangle:get/get
# @within function relativeangle:get/_

## 実行者の角度を取得
### 向き補正
    tp 0000ab6d-0000-0000-0000-000000000000 ~ ~ ~ ~ ~
### 複製
    data modify storage calculation: r0 set from entity 0000ab6d-0000-0000-0000-000000000000 Rotation

## 対象へのの角度を取得
### 向き補正
    execute anchored eyes facing entity @e[tag=RelativeAngle.Target,limit=1] eyes run tp 0000ab6d-0000-0000-0000-000000000000 ~ ~ ~ ~ ~
### 複製
    data modify storage calculation: r1 set from entity 0000ab6d-0000-0000-0000-000000000000 Rotation

## ロード
### r0
    execute store result score $RelativeAngle.r0.x temporary run data get storage calculation: r0[0] 1000000
    execute store result score $RelativeAngle.r0.y temporary run data get storage calculation: r0[1] 1000000
### r1
    execute store result score $RelativeAngle.r1.x temporary run data get storage calculation: r1[0] 1000000
    execute store result score $RelativeAngle.r1.y temporary run data get storage calculation: r1[1] 1000000

## RX
    scoreboard players operation $RelativeAngle.rx temporary = $RelativeAngle.r1.x temporary
    scoreboard players operation $RelativeAngle.rx temporary -= $RelativeAngle.r0.x temporary
### 補正
    execute if score $RelativeAngle.rx temporary matches ..-180000000 run scoreboard players add $RelativeAngle.rx temporary 360000000
    execute if score $RelativeAngle.rx temporary matches 180000000.. run scoreboard players remove $RelativeAngle.rx temporary 360000000

## RY
    scoreboard players operation $RelativeAngle.ry temporary = $RelativeAngle.r1.y temporary
    scoreboard players operation $RelativeAngle.ry temporary -= $RelativeAngle.r0.y temporary
### 補正
    execute if score $RelativeAngle.ry temporary matches ..-90000000 run scoreboard players add $RelativeAngle.ry temporary 180000000
    execute if score $RelativeAngle.ry temporary matches 90000000.. run scoreboard players remove $RelativeAngle.ry temporary 180000000

# y0,y1: (y1 - y0)

## セット
    execute store result storage relativeangle: result[0] float 0.000001 run scoreboard players get $RelativeAngle.rx temporary
    execute store result storage relativeangle: result[1] float 0.000001 run scoreboard players get $RelativeAngle.ry temporary

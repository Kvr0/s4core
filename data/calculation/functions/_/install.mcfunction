#> calculation:_/install
# Calculationのインストール
# @within tag/function installmanager:install

## ストレージ初期化
    data merge storage calculation: {}

## 一時保持スコアボードの追加
    scoreboard objectives add temporary dummy

## グローバルスコアボードの追加
    scoreboard objectives add global dummy

## 乱数
### 定数設定
    scoreboard players set $31743 global 31743

### 初期値取得
    summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["new"]}
    execute store result score $Random.Base global run data get entity @e[tag=new,limit=1] UUID[1]
    execute store result score $Random.Carry global run data get entity @e[tag=new,limit=1] UUID[3]
    kill @e[tag=new,limit=1]

## InstallManagerへの登録
    data modify storage installmanager: installed append value Calculation
    data modify storage installmanager: relation append value {id:Calculation,dep:[InstallManager]}

#> calculation:_/install
# Calculationのインストール
# @within tag/function installmanager:install

## ストレージ初期化
    data merge storage calculation: {}

## 一時保持スコアボードの追加
    scoreboard objectives add temporary dummy

## グローバルスコアボードの追加
    scoreboard objectives add global dummy

## InstallManagerへの登録
    data modify storage installmanager: installed append value Calculation
    data modify storage installmanager: relation append value {id:Calculation,dep:[InstallManager]}

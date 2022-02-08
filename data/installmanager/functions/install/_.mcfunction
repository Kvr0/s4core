#> installmanager:install/_
# 機能のインストール
# @api

## データのリセット
    data modify storage installmanager: installed set value []
    data modify storage installmanager: relation set value []

## InstallManagerのインストール
    data modify storage installmanager: installed append value InstallManager
    data modify storage installmanager: relation append value {id:InstallManager,dep:[]}

## コールバックを呼び出す
    function #installmanager:install

## 依存関係の確認を予約
    schedule function installmanager:check_relation/_ 1t replace

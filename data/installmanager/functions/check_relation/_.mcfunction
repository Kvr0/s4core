#> installmanager:check_relation/_
# 機能の依存関係の確認
# @within function installmanager:install/_

## データのリセット
    data modify storage installmanager: relation_error set value []

## 依存関係データを複製
    data modify storage installmanager: temp.relation set from storage installmanager: relation

## 依存関係データがある => ループ
    execute if data storage installmanager: temp.relation[0] run function installmanager:check_relation/loop

## エラー表示が有効 => エラーの表示
    execute unless data storage installmanager: {ignore_error:1b} run function installmanager:show_error/_

## データの削除
    data remove storage installmanager: relation_error

## 一次データの削除
    data remove storage installmanager: temp

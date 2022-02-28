#> installmanager:check_relation/loop
# 機能の依存関係を機能ごとに確認するループ
# @within function installmanager:check_relation/_

## データのリセット
    data modify storage installmanager: temp.error set value {id:"",error:[]}

## IDの設定
    data modify storage installmanager: temp.error.id set from storage installmanager: temp.relation[0].id

## 依存先機能データを複製
    data modify storage installmanager: temp.dep set from storage installmanager: temp.relation[0].dep

## 依存先機能データがある => ループ
    execute if data storage installmanager: temp.dep[0] run function installmanager:check_relation/dep_loop

## エラーがある => エラーを追加
    execute if data storage installmanager: temp.error.error[0] run data modify storage installmanager: relation_error append from storage installmanager: temp.error

## ループを進める
    data remove storage installmanager: temp.relation[0]

### 依存関係データがある => ループ
    execute if data storage installmanager: temp.relation[0] run function installmanager:check_relation/loop

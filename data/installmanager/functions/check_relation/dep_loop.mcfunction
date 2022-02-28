#> installmanager:check_relation/dep_loop
# 依存先機能がインストールされているか依存先機能ごとに確認するループ
# @within function installmanager:check_relation/loop

## データのリセット
    data modify storage installmanager: temp.compare_result set value 1b

## 依存先機能がインストールされているか確認
### インストール済みIDを複製
    data modify storage installmanager: temp.installed set from storage installmanager: installed

### インストール済みIDがある => ループ
    execute if data storage installmanager: temp.installed[0] run function installmanager:check_relation/compare_loop

### インストール済みIDがない or 依存先機能がない => エラーに追加
    execute unless data storage installmanager: installed[0] run data modify storage installmanager: temp.error.error append from storage installmanager: temp.dep[0]
    execute if data storage installmanager: installed[0] unless data storage installmanager: {temp:{compare_result:0b}} run data modify storage installmanager: temp.error.error append from storage installmanager: temp.dep[0]

## ループを進める
    data remove storage installmanager: temp.dep[0]

### 依存先機能データがある => ループ
    execute if data storage installmanager: temp.dep[0] run function installmanager:check_relation/dep_loop

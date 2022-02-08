#> installmanager:show_error/loop
# 機能ごとにエラーを表示するループ
# @within function installmanager:show_error/_

## エラーを表示
    tellraw @a [{"text": "・機能名 : "},{"nbt":"temp.error[0].id","storage": "installmanager:","color": "green"}]

## 不足機能の複製
    data modify storage installmanager: temp.lack_error set from storage installmanager: temp.error[0].error

## 不足機能がある => 不足機能のフォーマット
    execute if data storage installmanager: temp.lack_error[0] run function installmanager:show_error/lack_loop

## ループを進める
    data remove storage installmanager: temp.error[0]

### エラーがある => ループ
    execute if data storage installmanager: temp.error[0] run function installmanager:show_error/loop

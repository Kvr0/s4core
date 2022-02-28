#> installmanager:show_error/lack_loop
# @within function installmanager:show_error/loop

## エラーの表示
    tellraw @a [{"text": "  ・不足している機能 : "},{"nbt":"temp.lack_error[0]","storage": "installmanager:","color": "green"}]

## ループを進める
    data remove storage installmanager: temp.lack_error[0]

### 不足機能がある => 不足機能のフォーマット
    execute if data storage installmanager: temp.lack_error[0] run function installmanager:show_error/lack_loop

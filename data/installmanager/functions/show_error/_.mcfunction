#> installmanager:show_error/_
# エラーを表示
# @within function installmanager:check_relation/_


## エラーを複製
    data modify storage installmanager: temp.error set from storage installmanager: relation_error

## エラーがある => 警告を表示
    execute if data storage installmanager: temp.error[0] run tellraw @a ["",{"text": "[Error]","color": "dark_red"},{"text": " 機能の依存関係に問題があります."}]

## エラーがある => ループ
    execute if data storage installmanager: temp.error[0] run function installmanager:show_error/loop


#> playerinventory:_/tick
# @within tag/function tickmanager:tick

##  選択中スロットの変更検知
    execute as @a run function playerinventory:check_selected/_

## リセット
    function calculation:reset/_

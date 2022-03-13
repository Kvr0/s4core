#> playerinventory:_/tick
# @within tag/function tickmanager:tick

## Open
    function calculation:session/open

##  選択中スロットの変更検知
    execute as @a run function playerinventory:check_selected/_

## Close
    function calculation:session/close

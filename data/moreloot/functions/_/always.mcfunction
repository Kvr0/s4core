#> moreloot:_/always
# @within tag/function tickmanager:always

## 検知
    execute as @e[type=item,nbt={Item:{tag:{MoreLoot:1b}}}] at @s run function moreloot:block/item

## リセット
    function calculation:reset/_

#> moreloot:_/tick
# @within tag/function tickmanager:tick

## Open
    function calculation:session/open

## 検知
    execute as @e[type=item,nbt={Item:{tag:{MoreLoot:1b}}}] at @s run function moreloot:block/item

## Close
    function calculation:session/close

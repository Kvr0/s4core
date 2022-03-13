#> itemid:get_itemid/get
# @within function itemid:get_itemid/_

## ID
    scoreboard players set $itemid:get_itemid/_.id temporary 0

    execute if predicate itemid:itemid/1 run scoreboard players add $itemid:get_itemid/_.id temporary 1
    execute if predicate itemid:itemid/2 run scoreboard players add $itemid:get_itemid/_.id temporary 2
    execute if predicate itemid:itemid/3 run scoreboard players add $itemid:get_itemid/_.id temporary 4
    execute if predicate itemid:itemid/4 run scoreboard players add $itemid:get_itemid/_.id temporary 8
    execute if predicate itemid:itemid/5 run scoreboard players add $itemid:get_itemid/_.id temporary 16
    execute if predicate itemid:itemid/6 run scoreboard players add $itemid:get_itemid/_.id temporary 32
    execute if predicate itemid:itemid/7 run scoreboard players add $itemid:get_itemid/_.id temporary 64
    execute if predicate itemid:itemid/8 run scoreboard players add $itemid:get_itemid/_.id temporary 128
    execute if predicate itemid:itemid/9 run scoreboard players add $itemid:get_itemid/_.id temporary 256
    execute if predicate itemid:itemid/10 run scoreboard players add $itemid:get_itemid/_.id temporary 512
    execute if predicate itemid:itemid/11 run scoreboard players add $itemid:get_itemid/_.id temporary 1024

## Result
    execute store result storage itemid: result int 1 run scoreboard players get $itemid:get_itemid/_.id temporary


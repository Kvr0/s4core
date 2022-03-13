#> itemid:get_blockid/_
# @api

## Open
    function calculation:session/open

## GetID
    scoreboard players set $itemid:get_blockid/_.id temporary 0
    execute if block ~ ~ ~ #itemid:id/1 run scoreboard players add $itemid:get_blockid/_.id temporary 1
    execute if block ~ ~ ~ #itemid:id/2 run scoreboard players add $itemid:get_blockid/_.id temporary 2
    execute if block ~ ~ ~ #itemid:id/3 run scoreboard players add $itemid:get_blockid/_.id temporary 4
    execute if block ~ ~ ~ #itemid:id/4 run scoreboard players add $itemid:get_blockid/_.id temporary 8
    execute if block ~ ~ ~ #itemid:id/5 run scoreboard players add $itemid:get_blockid/_.id temporary 16
    execute if block ~ ~ ~ #itemid:id/6 run scoreboard players add $itemid:get_blockid/_.id temporary 32
    execute if block ~ ~ ~ #itemid:id/7 run scoreboard players add $itemid:get_blockid/_.id temporary 64
    execute if block ~ ~ ~ #itemid:id/8 run scoreboard players add $itemid:get_blockid/_.id temporary 128
    execute if block ~ ~ ~ #itemid:id/9 run scoreboard players add $itemid:get_blockid/_.id temporary 256
    execute if block ~ ~ ~ #itemid:id/10 run scoreboard players add $itemid:get_blockid/_.id temporary 512

## Result
    execute store result storage itemid: result int 1 run scoreboard players get $itemid:get_blockid/_.id temporary

## Close
    function calculation:session/close

#> itemid:get_itemid/_
# @api

## Open
    function calculation:session/open

## Buffer
    execute unless entity @e[tag=itemid.buffer] run summon armor_stand 0 1000 0 {Tags:[itemid.buffer]}
    item replace entity @e[tag=itemid.buffer,limit=1] weapon.mainhand with stone

## Item
    data modify entity @e[tag=itemid.buffer,limit=1] HandItems[0].id set from storage itemid: input

## GetID
    execute as @e[tag=itemid.buffer,limit=1] run function itemid:get_itemid/get

## Close
    function calculation:session/close


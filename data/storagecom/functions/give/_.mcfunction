#> storagecom:give/_
# @api

## Item
    execute at @s run summon item ~ ~ ~ {Tags:[storagecom.new],PickupDelay:0,Item:{id:"stone",Count:1b}}

## Set ID
    data modify entity @e[tag=storagecom.new,limit=1] Item.id set from storage storagecom: input.id

## Set Count
    data modify entity @e[tag=storagecom.new,limit=1] Item.Count set from storage storagecom: input.count

## Set Tag
    execute if data storage storagecom: input.tag run data modify entity @e[tag=storagecom.new,limit=1] Item.tag set from storage storagecom: input.tag
    
## Remove Tag
    tag @e remove storagecom.new

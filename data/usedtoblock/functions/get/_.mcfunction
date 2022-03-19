#> usedtoblock:get/_
# @api

## Open
    function calculation:session/open

## Reset
    data modify storage usedtoblock: result set value {id:"item_frame",Count:1b,tag:{}}

## Count
    execute if data storage usedtoblock: input.count run data modify storage usedtoblock: result.Count set from storage usedtoblock: input.count
    execute store result score $usedtoblock:get/_.count temporary run data get storage usedtoblock: result.Count

## Tag
    execute if data storage usedtoblock: input.tag run data modify storage usedtoblock: result.tag merge from storage usedtoblock: input.tag
    data modify storage usedtoblock: input.tag.EntityTag set value {Silent:1b,Tags:[UsedToBlock],Item:{id:"stone",Count:1b,tag:{}}}

## Data
    data modify storage usedtoblock: result.tag.EntityTag.Item.tag set from storage usedtoblock: input.data

## NewID
    function usedtoblock:get/newid

## Give
    execute if data storage usedtoblock: input{give:1b} run loot give @s loot usedtoblock:give

## Close
    function calculation:session/close

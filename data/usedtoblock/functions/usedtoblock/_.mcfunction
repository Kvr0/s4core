#> usedtoblock:usedtoblock/_
# @within advancement usedtoblock:usedtoblock

## Open
    function calculation:session/open

## This
    tag @s add this

## Find
    execute as @e[type=item_frame,tag=UsedToBlock] at @s run function usedtoblock:usedtoblock/find/0

## Remove Tag
    tag @s remove this

## Revoke
    advancement revoke @s only usedtoblock:usedtoblock

## Close
    function calculation:session/close

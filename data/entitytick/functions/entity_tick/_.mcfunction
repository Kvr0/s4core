#> entitytick:entity_tick/_
# @within function entitytick:_/tick

## Open
    function calculation:session/open

## OhMyDat
    function #oh_my_dat:please

## リセット
    data modify storage entitytick: loaded set value []
    data modify storage entitytick: nbt set value {}

## Load Entity NBT
    function #entitytick:load_nbt/entity

## Entity Tick
    function #entitytick:tick/entity

## Close
    function calculation:session/close

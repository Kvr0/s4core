#> entitytick:entity_tick/_
# @within function entitytick:_/tick

## OhMyDat
    function #oh_my_dat:please

## リセット
    data modify storage entitytick: nbt set value {}

## Load Entity NBT
    function #entitytick:load_nbt/entity

## Entity Tick
    function #entitytick:tick/entity

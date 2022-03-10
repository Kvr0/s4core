#> entitytick:player_tick/_
# @within function entitytick:_/tick

## OhMyDat
    function #oh_my_dat:please

## リセット
    data modify storage entitytick: nbt set value {}

## Load Player NBT
    function #entitytick:load_nbt/player

## Player Tick
    function #entitytick:tick/player

#> playerinventory:entitytick/load_nbt/_
# @within tag/function entitytick:load_nbt/player

## SelectedItemSlot
    execute unless data storage entitytick: {loaded:["SelectedItemSlot"]} run function playerinventory:entitytick/load_nbt/selecteditemslot

## Inventory
    execute unless data storage entitytick: {loaded:["Inventory"]} run function playerinventory:entitytick/load_nbt/inventory


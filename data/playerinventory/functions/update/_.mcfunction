#> playerinventory:update/_
# @within function playerinventory:entitytick/tick/_

## LastSelected
    data modify storage entitytick: nbt.lastselected set value {}
    data modify storage entitytick: nbt.lastselected set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].playerinventory.selected
    data modify storage entitytick: nbt.selected set value {id:"air",Count:0b}
    data modify storage entitytick: nbt.selected.Slot set from storage entitytick: nbt.SelectedItemSlot

## Selected
    execute if data storage entitytick: nbt{SelectedItemSlot:0b} run data modify storage entitytick: nbt.selected set from storage entitytick: nbt.Inventory[{Slot:0b}]
    execute if data storage entitytick: nbt{SelectedItemSlot:1b} run data modify storage entitytick: nbt.selected set from storage entitytick: nbt.Inventory[{Slot:1b}]
    execute if data storage entitytick: nbt{SelectedItemSlot:2b} run data modify storage entitytick: nbt.selected set from storage entitytick: nbt.Inventory[{Slot:2b}]
    execute if data storage entitytick: nbt{SelectedItemSlot:3b} run data modify storage entitytick: nbt.selected set from storage entitytick: nbt.Inventory[{Slot:3b}]
    execute if data storage entitytick: nbt{SelectedItemSlot:4b} run data modify storage entitytick: nbt.selected set from storage entitytick: nbt.Inventory[{Slot:4b}]
    execute if data storage entitytick: nbt{SelectedItemSlot:5b} run data modify storage entitytick: nbt.selected set from storage entitytick: nbt.Inventory[{Slot:5b}]
    execute if data storage entitytick: nbt{SelectedItemSlot:6b} run data modify storage entitytick: nbt.selected set from storage entitytick: nbt.Inventory[{Slot:6b}]
    execute if data storage entitytick: nbt{SelectedItemSlot:7b} run data modify storage entitytick: nbt.selected set from storage entitytick: nbt.Inventory[{Slot:7b}]
    execute if data storage entitytick: nbt{SelectedItemSlot:8b} run data modify storage entitytick: nbt.selected set from storage entitytick: nbt.Inventory[{Slot:8b}]

## データ設定
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].playerinventory.lastselected set from storage entitytick: nbt.lastselected
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].playerinventory.selected set from storage entitytick: nbt.selected

## Store
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].playerinventory.Inventory set from storage entitytick: nbt.Inventory

## InventoryChanged
    data modify storage entitytick: nbt.inventory_changed set value 1b

## Callback
    function #playerinventory:update

## Tag
    tag @s remove playerinventory.i_changed

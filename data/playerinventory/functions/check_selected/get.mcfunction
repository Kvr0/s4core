#> playerinventory:check_selected/get
# @within function playerinventory:check_selected/_
# @within function playerinventory:i_changed/_

## リセット
    data merge storage calculation: {}

## LastSelected
    data modify storage calculation: lastselected set value {}
    data modify storage calculation: lastselected set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].playerinventory.selected
    data modify storage calculation: selected set value {Slot:-1b,id:"air",Count:0b}
    execute store result storage calculation: selected.Slot byte 1 run scoreboard players get $PlayerInventory.Selected temporary

## Selected
    execute if score $PlayerInventory.Selected temporary matches 0 run data modify storage calculation: selected set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].playerinventory.inventory[{Slot:0b}]
    execute if score $PlayerInventory.Selected temporary matches 1 run data modify storage calculation: selected set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].playerinventory.inventory[{Slot:1b}]
    execute if score $PlayerInventory.Selected temporary matches 2 run data modify storage calculation: selected set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].playerinventory.inventory[{Slot:2b}]
    execute if score $PlayerInventory.Selected temporary matches 3 run data modify storage calculation: selected set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].playerinventory.inventory[{Slot:3b}]
    execute if score $PlayerInventory.Selected temporary matches 4 run data modify storage calculation: selected set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].playerinventory.inventory[{Slot:4b}]
    execute if score $PlayerInventory.Selected temporary matches 5 run data modify storage calculation: selected set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].playerinventory.inventory[{Slot:5b}]
    execute if score $PlayerInventory.Selected temporary matches 6 run data modify storage calculation: selected set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].playerinventory.inventory[{Slot:6b}]
    execute if score $PlayerInventory.Selected temporary matches 7 run data modify storage calculation: selected set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].playerinventory.inventory[{Slot:7b}]
    execute if score $PlayerInventory.Selected temporary matches 8 run data modify storage calculation: selected set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].playerinventory.inventory[{Slot:8b}]

## データ設定
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].playerinventory.lastselected set from storage calculation: lastselected
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].playerinventory.selected set from storage calculation: selected
#> playerinventory:check_selected/_
# @within function playerinventory:_/tick

## スロット取得
    execute store result score $PlayerInventory.Selected temporary run data get entity @s SelectedItemSlot 1

## データ設定
### OhMyDat
    execute unless score @s playerinventory.selected = $PlayerInventory.Selected temporary run function #oh_my_dat:please
    execute unless score @s playerinventory.selected = $PlayerInventory.Selected temporary run function playerinventory:check_selected/get

## スコア設定
    scoreboard players operation @s playerinventory.selected = $PlayerInventory.Selected temporary

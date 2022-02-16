#> playerinventory:i_changed/_
# @within advancement playerinventory:playerinventory/i_changed

## OhMyDat
    function #oh_my_dat:please

## データ取得
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].playerinventory.inventory set from entity @s Inventory

## 選択中アイテム
    function playerinventory:check_selected/get

## Revoke
    advancement revoke @s only playerinventory:playerinventory/i_changed
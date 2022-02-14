#> slotmodifier:get_item/weapon_offhand
# アイテムの取得:weapon.offhand
# @output storage slotmodifier:
#               Output   :compound
# @api

## 出力リセット
    data modify storage slotmodifier: Output set value {}

## 設定
    data modify storage slotmodifier: Output set from entity @s Inventory[{Slot:-106b}]
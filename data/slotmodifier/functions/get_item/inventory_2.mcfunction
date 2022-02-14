#> slotmodifier:get_item/inventory_2
# アイテムの取得:inventory.2
# @output storage slotmodifier:
#               Output   :compound
# @api

## 出力リセット
    data modify storage slotmodifier: Output set value {}

## 設定
    data modify storage slotmodifier: Output set from entity @s Inventory[{Slot:11b}]
#> slotmodifier:get_item/inventory_3
# アイテムの取得:inventory.3
# @output storage slotmodifier:
#               Output   :compound
# @api

## 出力リセット
    data modify storage slotmodifier: Output set value {}

## 設定
    data modify storage slotmodifier: Output set from entity @s Inventory[{Slot:12b}]
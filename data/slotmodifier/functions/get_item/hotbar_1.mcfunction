#> slotmodifier:get_item/hotbar_1
# アイテムの取得:hotbar.1
# @output storage slotmodifier:
#               Output   :compound
# @api

## 出力リセット
    data modify storage slotmodifier: Output set value {}

## 設定
    data modify storage slotmodifier: Output set from entity @s Inventory[{Slot:1b}]
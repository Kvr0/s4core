#> slotmodifier:get_item/hotbar_7
# アイテムの取得:hotbar.7
# @output storage slotmodifier:
#               Output   :compound
# @api

## 出力リセット
    data modify storage slotmodifier: Output set value {}

## 設定
    data modify storage slotmodifier: Output set from entity @s Inventory[{Slot:7b}]
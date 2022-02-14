#> slotmodifier:get_item/armor_head
# アイテムの取得:armor.head
# @output storage slotmodifier:
#               Output   :compound
# @api

## 出力リセット
    data modify storage slotmodifier: Output set value {}

## 設定
    data modify storage slotmodifier: Output set from entity @s Inventory[{Slot:103b}]
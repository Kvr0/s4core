#> slotmodifier:get_item/inventory_25
# アイテムの取得:inventory.25
# @output storage slotmodifier:
#               Output   :compound
# @api

## 出力リセット
    data modify storage slotmodifier: Output set value {}

## 取得
    item replace entity 0000ab6d-0000-0000-0000-001d02b97be4 armor.head from entity @s inventory.25

## 設定
    data modify storage slotmodifier: Output set from entity 0000ab6d-0000-0000-0000-001d02b97be4 ArmorItems[3]
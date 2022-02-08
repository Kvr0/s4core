#> slotmodifier:get_item/armor_legs
# アイテムの取得:armor.legs
# @output storage slotmodifier:
#               Output   :compound
# @api

## 出力リセット
    data modify storage slotmodifier: Output set value {}

## 取得
    item replace entity 0000ab6d-0000-0000-0000-001d02b97be4 armor.head from entity @s armor.legs

## 設定
    data modify storage slotmodifier: Output set from entity 0000ab6d-0000-0000-0000-001d02b97be4 ArmorItems[3]
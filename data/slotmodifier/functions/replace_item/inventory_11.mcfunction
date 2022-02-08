#> slotmodifier:replace_item/inventory_11
# アイテムの設定:inventory.11
# @input storage slotmodifier: Input
#               id          :string
#               Count       :byte
#               tag         :compound
# @api

## 一時アイテムの設定
    item replace entity 0000ab6d-0000-0000-0000-001d02b97be4 armor.head with air

## データの設定
    data modify entity 0000ab6d-0000-0000-0000-001d02b97be4 ArmorItems[3] merge from storage slotmodifier: Input

## 置き換え
    item replace entity @s inventory.11 from entity 0000ab6d-0000-0000-0000-001d02b97be4 armor.head

## 入力リセット
    data modify storage slotmodifier: Input set value {}
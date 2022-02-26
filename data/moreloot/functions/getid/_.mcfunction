#> moreloot:getid/_
# @api

## リセット
    data modify storage moreloot: result set value {id:""}

## 取得
    loot replace entity 0000ab6d-0000-0000-0000-001d02b97be4 armor.head mine ~ ~ ~ debug_stick{GetID:1b}

## データ設定
    data modify storage moreloot: result.id set from entity 0000ab6d-0000-0000-0000-001d02b97be4 ArmorItems[3].id

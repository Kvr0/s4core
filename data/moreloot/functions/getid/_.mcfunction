#> moreloot:getid/_
# @api

execute unless entity @e[tag=MoreLoot.GetID.Entity] run summon armor_stand 0 1000 0 {Tags:[MoreLoot.GetID.Entity],Invisible:1b,Marker:1b}

## リセット
    data modify storage moreloot: result set value {id:""}

## 取得
    item replace entity @e[tag=MoreLoot.GetID.Entity,limit=1] armor.head with air
    loot replace entity @e[tag=MoreLoot.GetID.Entity,limit=1] armor.head mine ~ ~ ~ debug_stick{GetID:1b}

## データ設定
    data modify storage moreloot: result.id set from entity @e[tag=MoreLoot.GetID.Entity,limit=1] ArmorItems[3].tag.item

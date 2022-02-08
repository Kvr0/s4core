#> clickwithcarrot:identify/_
# 使用したアイテムの特定
# @within function clickwithcarrot:_/tick

## データのリセット
    data modify storage clickwithcarrot: slot set value ""
    data modify storage clickwithcarrot: item set value {}

## 使用した持ち手を判定
    execute if entity @s[predicate=clickwithcarrot:mainhand] run data modify storage clickwithcarrot: slot set value "weapon.mainhand"
    execute if entity @s[predicate=!clickwithcarrot:mainhand] run data modify storage clickwithcarrot: slot set value "weapon.offhand"

## アイテムデータを取得
    execute if data storage clickwithcarrot: {slot:"weapon.mainhand"} run function slotmodifier:get_item/weapon_mainhand
    execute if data storage clickwithcarrot: {slot:"weapon.offhand"} run function slotmodifier:get_item/weapon_offhand

## データを設定
    data modify storage clickwithcarrot: item set from storage slotmodifier: Output

## コールバック呼び出し
    function #clickwithcarrot:click

## データの削除
    data remove storage clickwithcarrot: slot
    data remove storage clickwithcarrot: item
   
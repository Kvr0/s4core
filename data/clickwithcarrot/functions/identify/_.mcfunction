#> clickwithcarrot:identify/_
# 使用したアイテムの特定
# @within function clickwithcarrot:_/tick

## データのリセット
    data modify storage clickwithcarrot: slot set value ""
    data modify storage clickwithcarrot: item set value {}

## データの設定
    execute if entity @s[predicate=clickwithcarrot:mainhand] run data modify storage clickwithcarrot: slot set value "weapon.mainhand"
    # <=>メインハンドのアイテムを取得
    execute if entity @s[predicate=!clickwithcarrot:mainhand] run data modify storage clickwithcarrot: slot set value "weapon.offhand"
    # <=>オフハンドのアイテムを取得

## コールバック呼び出し
    function #clickwithcarrot:click

## データの削除
    data remove storage clickwithcarrot: slot
    data remove storage clickwithcarrot: item
   
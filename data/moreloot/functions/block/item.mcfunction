#> moreloot:block/item
# @within function moreloot:_/tick

## リセット
    data merge storage moreloot: {pos:[0,0,0],UUID:[I;0,0,0,0],item:"air",tool:{}}

## pos
    execute store result storage moreloot: pos[0] int 1 run data get entity @s Pos[0] 1
    execute store result storage moreloot: pos[1] int 1 run data get entity @s Pos[1] 1
    execute store result storage moreloot: pos[2] int 1 run data get entity @s Pos[2] 1

## UUID
    data modify storage moreloot: UUID set from entity @s Item.tag.Player.UUID

## item
    data modify storage moreloot: item set from entity @s Item.id

## tool
    data modify storage moreloot: tool set from entity @s Item.tag.Player.Tool

## 壊したプレイヤーを取得
    execute store result score $moreloot:block/item.UUID[0] temporary run data get storage moreloot: UUID[0] 1
    execute store result score $moreloot:block/item.UUID[1] temporary run data get storage moreloot: UUID[1] 1
    execute store result score $moreloot:block/item.UUID[2] temporary run data get storage moreloot: UUID[2] 1
    execute store result score $moreloot:block/item.UUID[3] temporary run data get storage moreloot: UUID[3] 1
    execute as @a run function moreloot:block/get_player

## コールバック発火
    execute as @a[tag=moreloot.target] at @s run function #moreloot:digged

## Tag削除
    tag @a remove moreloot.target

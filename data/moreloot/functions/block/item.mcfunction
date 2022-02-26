#> moreloot:block/item
# @within function moreloot:_/always

## リセット
    data merge storage moreloot: {pos:[0,0,0],UUID:[I;0,0,0,0],item:"air"}

## pos
    execute store result storage moreloot: pos[0] int 1 run data get entity @s Pos[0] 1
    execute store result storage moreloot: pos[1] int 1 run data get entity @s Pos[1] 1
    execute store result storage moreloot: pos[2] int 1 run data get entity @s Pos[2] 1

## UUID
    data modify storage moreloot: UUID set from entity @s Item.tag.Player.UUID

## item
    data modify storage moreloot: item set from entity @s Item.id

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

## 削除
    kill @s

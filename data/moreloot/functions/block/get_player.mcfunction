#> moreloot:block/get_player
# @within function moreloot:block/item

## UUID取得
    execute store result score $moreloot:block/get_player.UUID[0] temporary run data get entity @s UUID[0] 1
    execute store result score $moreloot:block/get_player.UUID[1] temporary run data get entity @s UUID[1] 1
    execute store result score $moreloot:block/get_player.UUID[2] temporary run data get entity @s UUID[2] 1
    execute store result score $moreloot:block/get_player.UUID[3] temporary run data get entity @s UUID[3] 1

## Tag
    execute if score $moreloot:block/get_player.UUID[0] temporary = $moreloot:block/item.UUID[0] temporary if score $moreloot:block/get_player.UUID[1] temporary = $moreloot:block/item.UUID[1] temporary if score $moreloot:block/get_player.UUID[2] temporary = $moreloot:block/item.UUID[2] temporary if score $moreloot:block/get_player.UUID[3] temporary = $moreloot:block/item.UUID[3] temporary run tag @s add moreloot.target

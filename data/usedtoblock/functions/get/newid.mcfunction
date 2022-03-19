#> usedtoblock:get/newid
# @within function usedtoblock:get/_

## 定数値
    scoreboard players set $2 temporary 2
    scoreboard players set $2^15 temporary 32768
    scoreboard players set $2^16 temporary 65536

# グローバルインデックス増加
    scoreboard players add $usedtoblock.index global 1
    scoreboard players operation $usedtoblock.index global %= $2^15 temporary
    execute if score $usedtoblock.index global matches 0 run scoreboard players add $usedtoblock.index global 1

# Clone
    scoreboard players operation $CloneFlagIndex temporary = $usedtoblock.index global
# FlagIndex << 16
    scoreboard players operation $CloneFlagIndex temporary *= $2^16 temporary
# オーバーフローしてたらtag追加
    execute if score $CloneFlagIndex temporary matches 00.. run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.0-1
    execute if score $CloneFlagIndex temporary matches ..-1 run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.1-1
# 0になるまでやる
    scoreboard players operation $CloneFlagIndex temporary *= $2 Const
    execute if score $CloneFlagIndex temporary matches 00.. run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.1-0
    execute if score $CloneFlagIndex temporary matches ..-1 run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.1-1
    scoreboard players operation $CloneFlagIndex temporary *= $2 Const
    execute if score $CloneFlagIndex temporary matches 00.. run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.2-0
    execute if score $CloneFlagIndex temporary matches ..-1 run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.2-1
    scoreboard players operation $CloneFlagIndex temporary *= $2 Const
    execute if score $CloneFlagIndex temporary matches 00.. run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.3-0
    execute if score $CloneFlagIndex temporary matches ..-1 run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.3-1
    scoreboard players operation $CloneFlagIndex temporary *= $2 Const
    execute if score $CloneFlagIndex temporary matches 00.. run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.4-0
    execute if score $CloneFlagIndex temporary matches ..-1 run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.4-1
    scoreboard players operation $CloneFlagIndex temporary *= $2 Const
    execute if score $CloneFlagIndex temporary matches 00.. run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.5-0
    execute if score $CloneFlagIndex temporary matches ..-1 run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.5-1
    scoreboard players operation $CloneFlagIndex temporary *= $2 Const
    execute if score $CloneFlagIndex temporary matches 00.. run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.6-0
    execute if score $CloneFlagIndex temporary matches ..-1 run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.6-1
    scoreboard players operation $CloneFlagIndex temporary *= $2 Const
    execute if score $CloneFlagIndex temporary matches 00.. run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.7-0
    execute if score $CloneFlagIndex temporary matches ..-1 run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.7-1
    scoreboard players operation $CloneFlagIndex temporary *= $2 Const
    execute if score $CloneFlagIndex temporary matches 00.. run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.8-0
    execute if score $CloneFlagIndex temporary matches ..-1 run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.8-1
    scoreboard players operation $CloneFlagIndex temporary *= $2 Const
    execute if score $CloneFlagIndex temporary matches 00.. run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.9-0
    execute if score $CloneFlagIndex temporary matches ..-1 run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.9-1
    scoreboard players operation $CloneFlagIndex temporary *= $2 Const
    execute if score $CloneFlagIndex temporary matches 00.. run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.10-0
    execute if score $CloneFlagIndex temporary matches ..-1 run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.10-1
    scoreboard players operation $CloneFlagIndex temporary *= $2 Const
    execute if score $CloneFlagIndex temporary matches 00.. run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.11-0
    execute if score $CloneFlagIndex temporary matches ..-1 run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.11-1
    scoreboard players operation $CloneFlagIndex temporary *= $2 Const
    execute if score $CloneFlagIndex temporary matches 00.. run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.12-0
    execute if score $CloneFlagIndex temporary matches ..-1 run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.12-1
    scoreboard players operation $CloneFlagIndex temporary *= $2 Const
    execute if score $CloneFlagIndex temporary matches 00.. run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.13-0
    execute if score $CloneFlagIndex temporary matches ..-1 run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.13-1
    scoreboard players operation $CloneFlagIndex temporary *= $2 Const
    execute if score $CloneFlagIndex temporary matches 00.. run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.14-0
    execute if score $CloneFlagIndex temporary matches ..-1 run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.14-1
    scoreboard players operation $CloneFlagIndex temporary *= $2 Const
    execute if score $CloneFlagIndex temporary matches 00.. run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.15-0
    execute if score $CloneFlagIndex temporary matches ..-1 run data modify storage usedtoblock: result.tag.EntityTag.Tags append value UsedToBlock.15-1

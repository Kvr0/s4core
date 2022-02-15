#> blockglowing:_/tick
# @within tag/function tickmanager:tick

## 小さくなったスライムを削除
    execute as @e[name="BlockGlowing"] if entity @s[nbt={Size:0}] run function blockglowing:_private/kill

## 時間制限
    execute as @e[tag=BlockGlowing] if score @s blockglowing.time matches ..0 unless score @s blockglowing.time matches -1 run function blockglowing:_private/kill
    execute as @e[tag=BlockGlowing] if score @s blockglowing.time matches 1.. run scoreboard players remove @s blockglowing.time 1

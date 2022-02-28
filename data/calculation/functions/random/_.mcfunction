#> calculation:random/_
# 0-65535の乱数を返す
# @output result score
# @api

scoreboard players operation $Random.Base global *= $31743 global
scoreboard players operation $Random.Base global += $Random.Carry global
scoreboard players operation $Random.Carry global = $Random.Base global
scoreboard players operation $Random.Carry global /= $65536 global
scoreboard players operation $Random.Base global %= $65536 global

scoreboard players get $Random.Base global
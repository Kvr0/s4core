#> calculation:session/close
# 計算用セッションの終了
# @api

## Opened
    data remove storage calculation:session opened[-1]

## Reset
    execute unless data storage calculation:session opened[-1] run function calculation:session/reset

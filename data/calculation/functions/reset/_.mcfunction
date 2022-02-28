#> calculation:reset/_
# @api

## Check Skip
    execute store result score $calculation:reset/_.skips temporary if data storage calculation: skip[]

## ストレージ初期化
    execute unless score $calculation:reset/_.skips temporary matches 1.. run data merge storage calculation: {}

## スコアボード値リセット
    execute unless score $calculation:reset/_.skips temporary matches 1.. run scoreboard players reset * temporary

## Skip
    data remove storage calculation: skip[-1]
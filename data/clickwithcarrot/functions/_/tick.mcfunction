#> clickwithcarrot:_/tick
# tick処理
# @within tag/function tickmanager:tick

## クリック者を対象にアイテムの特定
    execute as @a[scores={clickwithcarrot.click=1..}] run function clickwithcarrot:identify/_

## スコアのリセット
    scoreboard players reset @a[scores={clickwithcarrot.click=1..}] clickwithcarrot.click

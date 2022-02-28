#> tickmanager:tick/_
# Tick処理
# @within tag/function minecraft:tick

## tick処理が有効 => tick処理
    execute if data storage tickmanager: {running:1b} run function #tickmanager:tick

## 有効無効にかかわらず実行
    function #tickmanager:always

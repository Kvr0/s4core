#> blockglowing:_/uninstall
# BlockGlowingのアンインストール
# @within tag/function installmanager:uninstall

## チームの削除
    team remove blockglowing.aqua
    team remove blockglowing.black
    team remove blockglowing.blue
    team remove blockglowing.dark_aqua
    team remove blockglowing.dark_blue
    team remove blockglowing.dark_gray
    team remove blockglowing.dark_green
    team remove blockglowing.dark_purple
    team remove blockglowing.dark_red
    team remove blockglowing.gold
    team remove blockglowing.gray
    team remove blockglowing.green
    team remove blockglowing.light_purple
    team remove blockglowing.red
    team remove blockglowing.white
    team remove blockglowing.yellow

## 時間制限スコアボードの削除
    scoreboard objectives remove blockglowing.time

## 残りを削除
    execute as @e[tag=BlockGlowing] run function blockglowing:_private/kill

#> clickwithcarrot:_/install
# ClickWithCarrotのインストール
# @within tag/function installmanager:install

## 検知用スコアボードの追加
    scoreboard objectives add clickwithcarrot.click minecraft.used:carrot_on_a_stick

## InstallManagerへの登録
    data modify storage installmanager: installed append value ClickWithCarrot
    data modify storage installmanager: relation append value {id:ClickWithCarrot,dep:[InstallManager,TickManager,SlotModifier]}

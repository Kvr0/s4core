#> playerinventory:_/install
# PlayerInventoryのインストール
# @within tag/function installmanager:install

## 選択中スロットの変更検知用スコアボード
    scoreboard objectives add playerinventory.selected dummy

## InstallManagerへの登録
    data modify storage installmanager: installed append value PlayerInventory
    data modify storage installmanager: relation append value {id:PlayerInventory,dep:[InstallManager,TickManager]}

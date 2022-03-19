#> usedtoblock:_/install
# @within tag/function installmanager:install

## InstallManagerへの登録
    data modify storage installmanager: installed append value UsedToBlock
    data modify storage installmanager: relation append value {id:UsedToBlock,dep:[InstallManager]}


#> itemid:_/install
# @within tag/function installmanager:install

## InstallManagerへの登録
    data modify storage installmanager: installed append value ItemID
    data modify storage installmanager: relation append value {id:ItemID,dep:[InstallManager]}

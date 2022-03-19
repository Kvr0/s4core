#> stringediter:_/install
# @within tag/function installmanager:install

## InstallManagerへの登録
    data modify storage installmanager: installed append value StringEditer
    data modify storage installmanager: relation append value {id:StringEditer,dep:[InstallManager,SlotModifier]}

#> entitytick:_/install
# @within tag/function installmanager:install

## InstallManagerへの登録
    data modify storage installmanager: installed append value EntityTick
    data modify storage installmanager: relation append value {id:EntityTick,dep:[InstallManager,TickManager]}

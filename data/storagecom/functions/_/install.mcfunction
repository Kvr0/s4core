#> storagecom:_/install
# @within tag/function installmanager:install

## InstallManagerへの登録
    data modify storage installmanager: installed append value StorageCom
    data modify storage installmanager: relation append value {id:StorageCom,dep:[InstallManager]}


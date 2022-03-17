#> chunkloader:_/install
# @within tag/function installmanager:install

## InstallManagerへの登録
    data modify storage installmanager: installed append value ChunkLoader
    data modify storage installmanager: relation append value {id:ChunkLoader,dep:[InstallManager]}


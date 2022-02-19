#> raycasting:_/install
# RayCastingのインストール
# @within tag/function installmanager:install

## InstallManagerへの登録
    data modify storage installmanager: installed append value RayCasting
    data modify storage installmanager: relation append value {id:RayCasting,dep:[InstallManager]}

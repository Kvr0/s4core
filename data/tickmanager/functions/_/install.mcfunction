#> tickmanager:_/install
# TickManagerのインストール
# @within tag/function installmanager:install

## tick処理を開始
    function tickmanager:start/_

## InstallManagerへの登録
    data modify storage installmanager: installed append value TickManager
    data modify storage installmanager: relation append value {id:TickManager,dep:[InstallManager]}

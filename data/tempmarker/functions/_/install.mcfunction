#> tempmarker:_/install
# TempMarkerのインストール
# @within tag/function installmanager:install

## マーカー召還
    summon marker 0 0 0 {Tags:[TempMarker],UUID:[I;43885,0,0,0]}
    summon marker 0 0 0 {Tags:[TempMarker],UUID:[I;43885,0,0,1]}

## InstallManagerへの登録
    data modify storage installmanager: installed append value TempMarker
    data modify storage installmanager: relation append value {id:TempMarker,dep:[InstallManager]}

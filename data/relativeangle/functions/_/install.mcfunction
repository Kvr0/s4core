#> relativeangle:_/install
# RelativeAngleのインストール
# @within tag/function installmanager:install

## InstallManagerへの登録
    data modify storage installmanager: installed append value RelativeAngle
    data modify storage installmanager: relation append value {id:RelativeAngle,dep:[InstallManager, Calculation]}

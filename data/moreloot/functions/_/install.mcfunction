#> moreloot:_/install
# @within tag/function installmanager:install

## InstallManagerへの登録
    data modify storage installmanager: installed append value MoreLoot
    data modify storage installmanager: relation append value {id:MoreLoot,dep:[InstallManager,TickManager,Calculation,SlotModifier]}

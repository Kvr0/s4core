#> slotmodifier:_/install
# SlotModifierのインストール
# @within tag/function installmanager:install

## バッファーエンティティの召喚
    forceload add 0 0 0 0
    function slotmodifier:try_summon/_

## InstallManagerへの登録
    data modify storage installmanager: installed append value SlotModifier
    data modify storage installmanager: relation append value {id:SlotModifier,dep:[InstallManager]}

#> slotmodifier:_/install
# SlotModifierのインストール
# @within tag/function installmanager:install

## バッファーエンティティの召喚
    forceload add 0 0 0 0
    summon armor_stand 0 1000 0 {UUID:[I;43885,0,29,45710308],Invisible:1b,Marker:1b,Small:1b}

## InstallManagerへの登録
    data modify storage installmanager: installed append value SlotModifier
    data modify storage installmanager: relation append value {id:SlotModifier,dep:[InstallManager]}

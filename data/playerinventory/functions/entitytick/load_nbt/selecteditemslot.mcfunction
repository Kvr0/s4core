#> playerinventory:entitytick/load_nbt/selecteditemslot
# @within function playerinventory:entitytick/load_nbt/player

data modify storage entitytick: loaded append value "SelectedItemSlot"
execute store result storage entitytick: nbt.SelectedItemSlot byte 1 run data get entity @s SelectedItemSlot
execute store success storage entitytick: nbt.changed_selected byte 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].playerinventory.SelectedItemSlot set from storage entitytick: nbt.SelectedItemSlot

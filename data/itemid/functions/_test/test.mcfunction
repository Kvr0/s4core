#> itemid:_test/test

## Open
    function calculation:session/open

execute positioned ~ ~-1 ~ run function itemid:get_blockid/_
data modify storage calculation: blockid set from storage itemid: result

data modify storage itemid: input set value ""
data modify storage itemid: input set from entity @s SelectedItem.id
function itemid:get_itemid/_
data modify storage calculation: itemid set from storage itemid: result

title @s actionbar ["Item:",{"nbt":"itemid","storage": "calculation:"}," Block",{"nbt":"blockid","storage": "calculation:"}]

## Open
    function calculation:session/open

#> itemid:id_to_name/_
# @api

## Open
    function calculation:session/open

## Reset
    data modify storage itemid: result set value ""
    data modify storage itemid: id_dict[].match set value 1b

## 定数値
    scoreboard players set $2 temporary 2
    #scoreboard players set $2^16 temporary 65536
    scoreboard players set $2^21 temporary 2097152

## ID
    scoreboard players set $itemid:id_to_name/_.id temporary 0
    execute store result score $itemid:id_to_name/_.id temporary run data get storage itemid: input
# ID << N (N=21)
    scoreboard players operation $itemid:id_to_name/_.id temporary *= $2^21 temporary
# オーバーフローチェック
    execute if score $itemid:id_to_name/_.id temporary matches 00.. run data modify storage itemid: id_dict[{bits:{11:1b}}].match set value 0b
    scoreboard players operation $itemid:id_to_name/_.id temporary *= $2 temporary
    execute if score $itemid:id_to_name/_.id temporary matches 00.. run data modify storage itemid: id_dict[{bits:{10:1b}}].match set value 0b
    scoreboard players operation $itemid:id_to_name/_.id temporary *= $2 temporary
    execute if score $itemid:id_to_name/_.id temporary matches 00.. run data modify storage itemid: id_dict[{bits:{9:1b}}].match set value 0b
    scoreboard players operation $itemid:id_to_name/_.id temporary *= $2 temporary
    execute if score $itemid:id_to_name/_.id temporary matches 00.. run data modify storage itemid: id_dict[{bits:{8:1b}}].match set value 0b
    scoreboard players operation $itemid:id_to_name/_.id temporary *= $2 temporary
    execute if score $itemid:id_to_name/_.id temporary matches 00.. run data modify storage itemid: id_dict[{bits:{7:1b}}].match set value 0b
    scoreboard players operation $itemid:id_to_name/_.id temporary *= $2 temporary
    execute if score $itemid:id_to_name/_.id temporary matches 00.. run data modify storage itemid: id_dict[{bits:{6:1b}}].match set value 0b
    scoreboard players operation $itemid:id_to_name/_.id temporary *= $2 temporary
    execute if score $itemid:id_to_name/_.id temporary matches 00.. run data modify storage itemid: id_dict[{bits:{5:1b}}].match set value 0b
    scoreboard players operation $itemid:id_to_name/_.id temporary *= $2 temporary
    execute if score $itemid:id_to_name/_.id temporary matches 00.. run data modify storage itemid: id_dict[{bits:{4:1b}}].match set value 0b
    scoreboard players operation $itemid:id_to_name/_.id temporary *= $2 temporary
    execute if score $itemid:id_to_name/_.id temporary matches 00.. run data modify storage itemid: id_dict[{bits:{3:1b}}].match set value 0b
    scoreboard players operation $itemid:id_to_name/_.id temporary *= $2 temporary
    execute if score $itemid:id_to_name/_.id temporary matches 00.. run data modify storage itemid: id_dict[{bits:{2:1b}}].match set value 0b
    scoreboard players operation $itemid:id_to_name/_.id temporary *= $2 temporary
    execute if score $itemid:id_to_name/_.id temporary matches 00.. run data modify storage itemid: id_dict[{bits:{1:1b}}].match set value 0b

## Match
    data modify storage itemid: result set from storage itemid: id_dict[{match:1b}].name
    execute store result score $itemid:id_to_name/_.match_count temporary if data storage itemid: id_dict[{match:1b}]

## Close
    function calculation:session/close

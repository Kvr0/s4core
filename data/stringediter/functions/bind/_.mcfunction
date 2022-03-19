#> stringediter:bind/_
# 文字列Aと文字列Bを結合
# @api

item replace entity 0000ab6d-0000-0000-0000-001d02b97be4 armor.head with stone 1
item modify entity 0000ab6d-0000-0000-0000-001d02b97be4 armor.head stringediter:bind

data remove storage stringediter: result
data modify storage stringediter: result set from entity 0000ab6d-0000-0000-0000-001d02b97be4 ArmorItems[3].tag.display.Name


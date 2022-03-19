#> playerinventory:entitytick/load_nbt/inventory
# @within function playerinventory:entitytick/load_nbt/_

data modify storage entitytick: loaded append value "Inventory"
data modify storage entitytick: nbt.Inventory set from entity @s Inventory

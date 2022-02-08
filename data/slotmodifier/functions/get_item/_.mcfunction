#> slotmodifier:get_item/_
# アイテムの取得:{0}
# @input storage slotmodifier: Input
#               Slot     :string
# @output storage slotmodifier:
#               Output   :compound
# @api

## Hotbar
execute if data storage slotmodifier: Input{Slot:"hotbar0"} run function slotmodifier:get_item/hotbar_0
execute if data storage slotmodifier: Input{Slot:"hotbar1"} run function slotmodifier:get_item/hotbar_1
execute if data storage slotmodifier: Input{Slot:"hotbar2"} run function slotmodifier:get_item/hotbar_2
execute if data storage slotmodifier: Input{Slot:"hotbar3"} run function slotmodifier:get_item/hotbar_3
execute if data storage slotmodifier: Input{Slot:"hotbar4"} run function slotmodifier:get_item/hotbar_4
execute if data storage slotmodifier: Input{Slot:"hotbar5"} run function slotmodifier:get_item/hotbar_5
execute if data storage slotmodifier: Input{Slot:"hotbar6"} run function slotmodifier:get_item/hotbar_6
execute if data storage slotmodifier: Input{Slot:"hotbar7"} run function slotmodifier:get_item/hotbar_7
execute if data storage slotmodifier: Input{Slot:"hotbar8"} run function slotmodifier:get_item/hotbar_8
## Inventory
execute if data storage slotmodifier: Input{Slot:"inventory0"} run function slotmodifier:get_item/inventory_0
execute if data storage slotmodifier: Input{Slot:"inventory1"} run function slotmodifier:get_item/inventory_1
execute if data storage slotmodifier: Input{Slot:"inventory2"} run function slotmodifier:get_item/inventory_2
execute if data storage slotmodifier: Input{Slot:"inventory3"} run function slotmodifier:get_item/inventory_3
execute if data storage slotmodifier: Input{Slot:"inventory4"} run function slotmodifier:get_item/inventory_4
execute if data storage slotmodifier: Input{Slot:"inventory5"} run function slotmodifier:get_item/inventory_5
execute if data storage slotmodifier: Input{Slot:"inventory6"} run function slotmodifier:get_item/inventory_6
execute if data storage slotmodifier: Input{Slot:"inventory7"} run function slotmodifier:get_item/inventory_7
execute if data storage slotmodifier: Input{Slot:"inventory8"} run function slotmodifier:get_item/inventory_8
execute if data storage slotmodifier: Input{Slot:"inventory9"} run function slotmodifier:get_item/inventory_9
execute if data storage slotmodifier: Input{Slot:"inventory10"} run function slotmodifier:get_item/inventory_10
execute if data storage slotmodifier: Input{Slot:"inventory11"} run function slotmodifier:get_item/inventory_11
execute if data storage slotmodifier: Input{Slot:"inventory12"} run function slotmodifier:get_item/inventory_12
execute if data storage slotmodifier: Input{Slot:"inventory13"} run function slotmodifier:get_item/inventory_13
execute if data storage slotmodifier: Input{Slot:"inventory14"} run function slotmodifier:get_item/inventory_14
execute if data storage slotmodifier: Input{Slot:"inventory15"} run function slotmodifier:get_item/inventory_15
execute if data storage slotmodifier: Input{Slot:"inventory16"} run function slotmodifier:get_item/inventory_16
execute if data storage slotmodifier: Input{Slot:"inventory17"} run function slotmodifier:get_item/inventory_17
execute if data storage slotmodifier: Input{Slot:"inventory18"} run function slotmodifier:get_item/inventory_18
execute if data storage slotmodifier: Input{Slot:"inventory19"} run function slotmodifier:get_item/inventory_19
execute if data storage slotmodifier: Input{Slot:"inventory20"} run function slotmodifier:get_item/inventory_20
execute if data storage slotmodifier: Input{Slot:"inventory21"} run function slotmodifier:get_item/inventory_21
execute if data storage slotmodifier: Input{Slot:"inventory22"} run function slotmodifier:get_item/inventory_22
execute if data storage slotmodifier: Input{Slot:"inventory23"} run function slotmodifier:get_item/inventory_23
execute if data storage slotmodifier: Input{Slot:"inventory24"} run function slotmodifier:get_item/inventory_24
execute if data storage slotmodifier: Input{Slot:"inventory25"} run function slotmodifier:get_item/inventory_25
execute if data storage slotmodifier: Input{Slot:"inventory26"} run function slotmodifier:get_item/inventory_26
## Armor
execute if data storage slotmodifier: Input{Slot:"armor.feet"} run function slotmodifier:get_item/armor_feet
execute if data storage slotmodifier: Input{Slot:"armor.legs"} run function slotmodifier:get_item/armor_legs
execute if data storage slotmodifier: Input{Slot:"armor.chest"} run function slotmodifier:get_item/armor_chest
execute if data storage slotmodifier: Input{Slot:"armor.head"} run function slotmodifier:get_item/armor_head
## Weapon
execute if data storage slotmodifier: Input{Slot:"weapon.mainhand"} run function slotmodifier:get_item/weapon_mainhand
execute if data storage slotmodifier: Input{Slot:"weapon.offhand"} run function slotmodifier:get_item/weapon_offhand

## 入力リセット
    data modify storage slotmodifier: Input set value {}
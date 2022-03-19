#> playerinventory:entitytick/tick/_
# @within tag/function entitytick:tick/player

execute if data storage entitytick: nbt{changed_selected:1b} if entity @s[tag=!playerinventory.i_changed] run function playerinventory:update/_
execute unless data storage entitytick: nbt{changed_selected:1b} if entity @s[tag=playerinventory.i_changed] run function playerinventory:update/_

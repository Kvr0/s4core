#> entitytick:_/tick
# @within tag/function tickmanager:tick

## Player Tick
    execute as @a at @s run function entitytick:player_tick/_

## Entity Tick
    execute as @e[tag=entitytick.target] at @s run function entitytick:entity_tick/_

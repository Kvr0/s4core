#> usedtoblock:usedtoblock/find/_
# @within function usedtoblock:usedtoblock/**

## Reset Buffer
    data modify storage usedtoblock: result set value {facing:0b,face:"",pos:[0,0,0],data:{}}

## Copy
    data modify storage calculation: usedtoblock.buffer set from entity @s

## Face
    data modify storage usedtoblock: result.facing set from storage calculation: usedtoblock.buffer.Facing

    execute if data storage usedtoblock: result{facing:0b} run data modify storage usedtoblock: result.face set value "-y"
    execute if data storage usedtoblock: result{facing:1b} run data modify storage usedtoblock: result.face set value "+y"
    execute if data storage usedtoblock: result{facing:2b} run data modify storage usedtoblock: result.face set value "-z"
    execute if data storage usedtoblock: result{facing:3b} run data modify storage usedtoblock: result.face set value "+z"
    execute if data storage usedtoblock: result{facing:4b} run data modify storage usedtoblock: result.face set value "-x"
    execute if data storage usedtoblock: result{facing:5b} run data modify storage usedtoblock: result.face set value "+x"

## Pos
    execute store result score $usedtoblock:usedtoblock/find/_.pos[0] temporary run data get storage calculation: usedtoblock.buffer.TileX
    execute store result score $usedtoblock:usedtoblock/find/_.pos[1] temporary run data get storage calculation: usedtoblock.buffer.TileY
    execute store result score $usedtoblock:usedtoblock/find/_.pos[2] temporary run data get storage calculation: usedtoblock.buffer.TileZ
### 方向補正
    execute if data storage usedtoblock: result{facing:0b} run scoreboard players add $usedtoblock:usedtoblock/find/_.pos[1] temporary 1
    execute if data storage usedtoblock: result{facing:1b} run scoreboard players remove $usedtoblock:usedtoblock/find/_.pos[1] temporary 1
    execute if data storage usedtoblock: result{facing:2b} run scoreboard players add $usedtoblock:usedtoblock/find/_.pos[2] temporary 1
    execute if data storage usedtoblock: result{facing:3b} run scoreboard players remove $usedtoblock:usedtoblock/find/_.pos[2] temporary 1
    execute if data storage usedtoblock: result{facing:4b} run scoreboard players add $usedtoblock:usedtoblock/find/_.pos[0] temporary 1
    execute if data storage usedtoblock: result{facing:5b} run scoreboard players remove $usedtoblock:usedtoblock/find/_.pos[0] temporary 1

    execute store result storage usedtoblock: result.pos[0] int 1 run scoreboard players get $usedtoblock:usedtoblock/find/_.pos[0] temporary
    execute store result storage usedtoblock: result.pos[1] int 1 run scoreboard players get $usedtoblock:usedtoblock/find/_.pos[1] temporary
    execute store result storage usedtoblock: result.pos[2] int 1 run scoreboard players get $usedtoblock:usedtoblock/find/_.pos[2] temporary

## Data
    data modify storage usedtoblock: result.data set from storage calculation: usedtoblock.buffer.Item.tag

## Target
    tag @s add usedtoblock.target

## Remove Target
    kill @s

## Callback
    execute as @a[tag=this] at @s run function #usedtoblock:used

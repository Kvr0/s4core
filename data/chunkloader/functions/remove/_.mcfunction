#> chunkloader:remove/_
# @api

## Open
    function calculation:session/open

## Tag
    tag @s add this

## Check Loader
    execute store result score $chunkloader:remove/_.pos[0] temporary run data get entity @s Pos[0] 1
    execute store result score $chunkloader:remove/_.pos[1] temporary run data get entity @s Pos[1] 1
    execute store result score $chunkloader:remove/_.pos[2] temporary run data get entity @s Pos[2] 1

    scoreboard players set $16 temporary 16

    execute if score $chunkloader:remove/_.pos[0] temporary matches ..-1 run scoreboard players operation $chunkloader:remove/_.pos[0] temporary -= $16 tempo
    execute if score $chunkloader:remove/_.pos[2] temporary matches ..-1 run scoreboard players operation $chunkloader:remove/_.pos[2] temporary -= $16 tempo

    scoreboard players operation $chunkloader:remove/_.pos[0] temporary /= $16 temporary
    scoreboard players operation $chunkloader:remove/_.pos[2] temporary /= $16 temporary

    scoreboard players operation $chunkloader:remove/_.pos[0] temporary *= $16 temporary
    scoreboard players operation $chunkloader:remove/_.pos[2] temporary *= $16 temporary

    execute store result storage clickwithcarrot: chunkloader.pos[0] double 1 run scoreboard players get $chunkloader:remove/_.pos[0] temporary
    execute store result storage clickwithcarrot: chunkloader.pos[2] double 1 run scoreboard players get $chunkloader:remove/_.pos[2] temporary

    data modify storage calculation: chunkloader.pos[1] set value 0d

    data modify entity @s Pos set from storage calculation: chunkloader.pos

    execute at @s if entity @s[type=marker] unless entity @e[tag=chunkloader.loader,tag=!this] run forceload remove ~ ~ ~ ~

## Remove
    tag @s remove this
    kill @s[type=marker,tag=chunkloader.loader]

## Close
    function calculation:session/close

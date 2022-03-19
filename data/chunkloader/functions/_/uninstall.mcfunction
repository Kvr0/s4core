#> chunkloader:_/uninstall
# @within tag/function installmanager:uninstall

## Loader
    execute as @e[tag=chunkloader.loader] at @s run forceload remove ~ ~ ~ ~
    kill @e[tag=chunkloader.loader]

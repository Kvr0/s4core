#> installmanager:_/load
# @within tag/function minecraft:load

## Auto
    execute if data storage installmanager: {auto:1b} unless data storage installmanager: installed run function installmanager:install/_

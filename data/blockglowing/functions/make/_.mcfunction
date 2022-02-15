#> blockglowing:make/_
# GlowingBlockの作成
# @api

## 召還
    execute align xyz positioned ~0.5 ~ ~0.5 run summon slime ~ ~ ~ {Invulnerable:1b,NoAI:1b,Silent:1b,DeathLootTable:"minecraft:emptyy",Tags:[BlockGlowing,new],Size:1,Team:"",CustomNameVisible:0b,CustomName:'{"text":"BlockGlowing"}',ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100000,ShowParticles:0b},{Id:24b,Amplifier:0b,Duration:100000,ShowParticles:0b}]}

## Color
    execute if data storage blockglowing: {color:"aqua"} run data modify entity @e[tag=new,tag=BlockGlowing,limit=1] Team set value "blockglowing.aqua"
    execute if data storage blockglowing: {color:"black"} run data modify entity @e[tag=new,tag=BlockGlowing,limit=1] Team set value "blockglowing.black"
    execute if data storage blockglowing: {color:"blue"} run data modify entity @e[tag=new,tag=BlockGlowing,limit=1] Team set value "blockglowing.blue"
    execute if data storage blockglowing: {color:"dark_aqua"} run data modify entity @e[tag=new,tag=BlockGlowing,limit=1] Team set value "blockglowing.dark_aqua"
    execute if data storage blockglowing: {color:"dark_blue"} run data modify entity @e[tag=new,tag=BlockGlowing,limit=1] Team set value "blockglowing.dark_blue"
    execute if data storage blockglowing: {color:"dark_gray"} run data modify entity @e[tag=new,tag=BlockGlowing,limit=1] Team set value "blockglowing.dark_gray"
    execute if data storage blockglowing: {color:"dark_green"} run data modify entity @e[tag=new,tag=BlockGlowing,limit=1] Team set value "blockglowing.dark_green"
    execute if data storage blockglowing: {color:"dark_purple"} run data modify entity @e[tag=new,tag=BlockGlowing,limit=1] Team set value "blockglowing.dark_purple"
    execute if data storage blockglowing: {color:"dark_red"} run data modify entity @e[tag=new,tag=BlockGlowing,limit=1] Team set value "blockglowing.dark_red"
    execute if data storage blockglowing: {color:"gold"} run data modify entity @e[tag=new,tag=BlockGlowing,limit=1] Team set value "blockglowing.gold"
    execute if data storage blockglowing: {color:"gray"} run data modify entity @e[tag=new,tag=BlockGlowing,limit=1] Team set value "blockglowing.gray"
    execute if data storage blockglowing: {color:"green"} run data modify entity @e[tag=new,tag=BlockGlowing,limit=1] Team set value "blockglowing.green"
    execute if data storage blockglowing: {color:"light_purple"} run data modify entity @e[tag=new,tag=BlockGlowing,limit=1] Team set value "blockglowing.light_purple"
    execute if data storage blockglowing: {color:"red"} run data modify entity @e[tag=new,tag=BlockGlowing,limit=1] Team set value "blockglowing.red"
    execute if data storage blockglowing: {color:"white"} run data modify entity @e[tag=new,tag=BlockGlowing,limit=1] Team set value "blockglowing.white"
    execute if data storage blockglowing: {color:"yellow"} run data modify entity @e[tag=new,tag=BlockGlowing,limit=1] Team set value "blockglowing.yellow"

## 時間制限
    execute store result score @e[tag=new,tag=BlockGlowing,limit=1] blockglowing.time run data get storage blockglowing: time 1

## new 削除
    tag @e remove new

## Tag 追加
    data modify entity @e[tag=new,tag=BlockGlowing,limit=1] Tags append from storage blockglowing tags[]

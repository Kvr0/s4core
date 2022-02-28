#> installmanager:check_relation/compare_loop
# 
# @within function installmanager:check_relation/dep_loop

## IDの比較
    data modify storage installmanager: temp.a set from storage installmanager: temp.dep[0]
    data modify storage installmanager: temp.b set from storage installmanager: temp.installed[0]
    execute store success storage installmanager: temp.compare_result byte 1 run data modify storage installmanager: temp.a set from storage installmanager: temp.b

## ループを進める
    data remove storage installmanager: temp.installed[0]

### インストール済みIDがある & IDが一致していない => ループ
    execute if data storage installmanager: temp.installed[0] if data storage installmanager: {temp:{compare_result:1b}} run function installmanager:check_relation/compare_loop

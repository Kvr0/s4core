#> relativeangle:get/_
# 相対座標の取得
# @output storage relativeangle: {is_entity:0b, has_target:0b, fail:0b, result:[0.0f, 0.0f]}
# @api

## Open
    function calculation:session/open

## リセット
    data merge storage relativeangle: {is_entity:0b, has_target:0b, fail:0b, result:[0.0f, 0.0f]}

## 実行者がエンティティか確認
    execute store success storage relativeangle: is_entity byte 1 run data get entity @s Rotation

## 対象の存在を確認
    execute store result storage relativeangle: has_target byte 1 if entity @e[tag=RelativeAngle.Target,limit=1]

## 実行成功フラグ
    execute store result storage relativeangle: fail byte 1 unless data storage relativeangle: {is_entity:1b,has_target:1b}

## 計算実行
    execute if data storage relativeangle: {fail:0b} run function relativeangle:get/get

## Close
    function calculation:session/close

# RayCasting:Block

実行者の視線の先のブロック座標を取得

## 取得データ
```json
{hit:0b,startpos:[0.0d,0.0d,0.0d],dir:[0.0d,0.0d,0.0d],pos:[0,0,0],face:"none"}
```

## 使い方
```mcfunction
## キャスト
    function raycasting:block/_
## 結果取得
    data get storage raycasting: result
```


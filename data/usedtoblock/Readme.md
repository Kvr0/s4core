# UsedToBlock

アイテムを使用したブロック座標と面を取得

## 依存機能
- `InstallManager`
- `Calculation`

## 内容
- アイテムを使用したブロック座標と面を取得
- 判定用アイテムの作成

## API
- `usedtoblock:get/_`  
  - 判定用アイテムの作成

## Callback
- `usedtoblock:used`

## 使い方
- 判定用アイテムの作成
```mcfunction
## データ設定
    data modify storage usedtoblock: input set value {give:1b,data:{something:1b}}

## 新規作成
    function usedtoblock:get/_

```
- コールバックでのデータ取得
```mcfunction
## BlockPos
    data get storage usedtoblock: result.pos
## Face
    data get storage usedtoblock: result.face
## Data
    data get storage usedtoblock: result.data
```

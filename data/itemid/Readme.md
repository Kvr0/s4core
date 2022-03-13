# ItemID

BlockID, ItemIDの取得

## 依存機能
- `InstallManager`

## API
- `itemid:get_blockid/_`
  - BlockIDの取得
- `itemid:get_itemid/_`
  - ItemIDの取得

## 使い方
- BlockID
```mcfunction
## Get BlockID
    execute positioned ~ ~-1 ~ run function itemid:get_blockid/_
    data get storage itemid: result
```
- ItemID
```mcfunction
## Set Item
    data modify storage itemid: input set value "cobblestone"
## Get ItemID
    function itemid:get_itemid/_
    data get storage itemid: result
```

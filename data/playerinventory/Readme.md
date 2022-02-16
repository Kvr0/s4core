# PlayerInventory

プレイヤーのインベントリー情報を記録する

## 依存機能
- `InstallManager`
- `TickManager`

## 内容
- インベントリ取得処理
- 現在、1つ前の選択アイテムの取得

## 使用例
- 例：選択中アイテムと一つ前のアイテムを取得
```mcfunction
## OhMyDat
    function #oh_my_dat:please

## 選択中アイテム
    data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].playerinventory.selected

## 一つ前のアイテム
    data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].playerinventory.lastselected
```
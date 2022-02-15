# ClickWithCarrot

人参付き棒のクリック判定の管理

## 依存機能
- `InstallManager`
- `TickManager`
- `SlotModifier`

## 内容
- 人参付き棒のクリック判定
- クリックに使用したアイテムの特定
- コールバック呼び出し

## コールバック
- `clickwithcarrot:click`

### 使用例
- 例:クリックに使用したアイテムのデータを取得する
```mcfunction
## データの取得
    data get storage clickwithcarrot: slot
    data get storage clickwithcarrot: item

```
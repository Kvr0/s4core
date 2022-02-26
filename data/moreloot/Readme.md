# MoreLoot

ブロックのルートに関する機能

## 依存機能
- `InstallManager`
- `TickManager`
- `Calculation`

## 機能
- ブロック破壊の検知・位置取得
- `DisableMoreLoot`タグの設定で無効化可能

## コールバック
- `moreloot:digged`
  > `storage moreloot:`
  > ```json
  > {pos:[0,0,0],UUID:[I;0,0,0,0],item:"air",tool:{}}
  > ```
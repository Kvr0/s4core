# RelativeAngle

実行者から対象への相対方向の取得

## 依存機能
- `InstallManager`
- `Calculation`

## 内容
- 相対方向の取得

## API
- `relativeangle:get/_`  
  - 相対位置の取得

### 使用例
- 例：召還したクリーパーとの相対方向の取得
  ```
  ## Targetの召還
  summon creeper ~2 ~2 ~2 {Tags:[RelativeAngle.Target]}

  ## 相対方向の取得
  function relativeangle:get/_

  ## 結果の出力
  tellraw @s [{"nbt":"result","storage":"relativeangle:"}]

  ```
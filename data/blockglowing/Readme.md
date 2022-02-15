# BlockGlowing

ブロックのふちが光る表現

## 内容
- カラー選択
- 追加タグ
- 時間制限

## 依存機能
- `InstallManager`
- `TickManager`

## 使用例
- 例：足元のブロックを20tick白色に発光させる
```mcfunction
## データを設定
    data merge storage blockglowing: {color:"white",tags:[],time:20}

## 作成
    execute positioned ~ ~-1 ~ run function blockglowing:make/_
```

# TickManager

tick処理を管理する

## 依存機能
- `InstallManager`

## 内容
- インストール済みの場合のみtick処理を実行
- tick処理の一時停止・再開

## API
- `tickmanager:start/_`  
  - tick処理の開始
- `tickmanager:stop/_`  
  - tick処理の停止

## コールバック
- `tickmanager:tick`

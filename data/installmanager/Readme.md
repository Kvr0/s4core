# InstallManager

追加される機能の依存関係やインストールを管理する

## 内容
- 機能のインストール・アンインストール
- 依存関係のチェック
- エラーの表示

## API
- `installmanager:install/_`  
  - 機能のインストール
- `installmanager:uninstall/_`
  - 機能のアンインストール

## コールバック
- `installmanager:install`
- `installmanager:uninstall`

### 使用例
- 例：機能"A",機能”B”に依存した機能"Example"のインストール
```mcfunction
## 機能"Example"のインストール処理
# ...

## InstallManagerへの登録
    data modify storage installmanager: installed append value Example
    data modify storage installmanager: relation append value {id:Example,dep:[A,B]}

```
- 例：機能"A",機能”B”に依存した機能"Example"のアンインストール
```mcfunction
## 機能"Example"のアンインストール処理
# ...
```

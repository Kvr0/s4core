# StringEditer

文字列編集機能

## 依存機能
- `InstallManager`

## API
- `stringediter:bind/_`
  - 文字列の結合
- `stringediter:convert/_`
  - 単純なテキスト形式を高度なテキスト形式に変換
  
## 使い方
- 2文字列を結合
```mcfunction
## 内容設定
    data modify storage stringediter: input set value {a:'{"text":"Hello"}',b:'{"text":"World"}'}
## 結合
    function stringediter:bind/_
## 取得
    data get storage stringediter: result
```
- 高度なテキスト形式に変換
```mcfunction
## 内容設定
    data modify storage stringediter: input set value '{"nbt":"something","storage":"some:"}'
## 結合
    function stringediter:convert/_
## 取得
    data get storage stringediter: result
```

#> installmanager:uninstall/_
# 機能のアンインストール
# @api

## コールバックを呼び出す
    function #installmanager:uninstall

## InstallManagerのアンインストール
### データの削除
    data remove storage installmanager: installed
    data remove storage installmanager: relation

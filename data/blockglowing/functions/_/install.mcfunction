#> blockglowing:_/install
# BlockGlowingのインストール
# @within tag/function installmanager:install

## 初期化
    data merge storage blockglowing: {color:"white",tags:[],time:20}

## 各色チームの追加
    team add blockglowing.aqua
    team modify blockglowing.aqua color aqua
    team modify blockglowing.aqua collisionRule never
    team add blockglowing.black
    team modify blockglowing.black color black
    team modify blockglowing.black collisionRule never
    team add blockglowing.blue
    team modify blockglowing.blue color blue
    team modify blockglowing.blue collisionRule never
    team add blockglowing.dark_aqua
    team modify blockglowing.dark_aqua color dark_aqua
    team modify blockglowing.dark_aqua collisionRule never
    team add blockglowing.dark_blue
    team modify blockglowing.dark_blue color dark_blue
    team modify blockglowing.dark_blue collisionRule never
    team add blockglowing.dark_gray
    team modify blockglowing.dark_gray color dark_gray
    team modify blockglowing.dark_gray collisionRule never
    team add blockglowing.dark_green
    team modify blockglowing.dark_green color dark_green
    team modify blockglowing.dark_green collisionRule never
    team add blockglowing.dark_purple
    team modify blockglowing.dark_purple color dark_purple
    team modify blockglowing.dark_purple collisionRule never
    team add blockglowing.dark_red
    team modify blockglowing.dark_red color dark_red
    team modify blockglowing.dark_red collisionRule never
    team add blockglowing.gold
    team modify blockglowing.gold color gold
    team modify blockglowing.gold collisionRule never
    team add blockglowing.gray
    team modify blockglowing.gray color gray
    team modify blockglowing.gray collisionRule never
    team add blockglowing.green
    team modify blockglowing.green color green
    team modify blockglowing.green collisionRule never
    team add blockglowing.light_purple
    team modify blockglowing.light_purple color light_purple
    team modify blockglowing.light_purple collisionRule never
    team add blockglowing.red
    team modify blockglowing.red color red
    team modify blockglowing.red collisionRule never
    team add blockglowing.white
    team modify blockglowing.white color white
    team modify blockglowing.white collisionRule never
    team add blockglowing.yellow
    team modify blockglowing.yellow color yellow
    team modify blockglowing.yellow collisionRule never

## 時間制限スコアボード
    scoreboard objectives add blockglowing.time dummy

## InstallManagerへの登録
    data modify storage installmanager: installed append value BlockGlowing
    data modify storage installmanager: relation append value {id:BlockGlowing,dep:[InstallManager,TickManager]}

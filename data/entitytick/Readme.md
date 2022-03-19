# EntityTick

NBTデータロードの補助

## 内容
- `OhMyDat`の呼び出し回数の削減
- EntityのNBTコピー回数の削減
- Entity/Playerを実行者としたTick

## API
- `entitytick:load_nbt/entity`  
  - EntityのNBTロード
- `entitytick:load_nbt/player`  
  - PlayerのNBTロード
- `entitytick:tick/entity`  
  - EntityのTick
- `entitytick:tick/player`  
  - PlayerのTick

## Tag
- `entitytick.target`
  - EntityTickの対象

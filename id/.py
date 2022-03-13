
## ID抽出正規表現
import re
id_re = re.compile('<option value="(.+?)">')

## ItemID
items = []
with open('itemid.txt','r') as f:
    context = f.read()
    items = id_re.findall(context)

## BlockID
blocks = []
with open('blockid.txt','r') as f:
    context = f.read()
    blocks = id_re.findall(context)

## ItemBlock
item_blocks = []
notitem_blocks = []
for block in blocks:
    if block in items:
        item_blocks.append(block)
    else:
        notitem_blocks.append(block)

## BlockItem
block_items = []
notblock_items = []
for item in items:
    if item in blocks:
        block_items.append(item)
    else:
        notblock_items.append(item)

## Dir作成
import os
os.makedirs('itemid',exist_ok=True)
os.makedirs('blockid',exist_ok=True)

## ID数 2^n
import math
items_num = len(items)+len(notitem_blocks)
items_n = math.ceil(math.log2(items_num))

## Json
import json

## Item
## -Tag
## -- All
with open('itemid\\all.json','w',encoding='utf-8') as f:
    json.dump({'replace':False,'values':items}, f)
## -- N
items_group = [[] for _ in range(items_n)]
for id, item in enumerate(items):
    for i in range(items_n):
        if (id & 2**i) != 0:
            items_group[i].append(item)
for i in range(items_n):
    with open(f'itemid\\{i+1}.json','w',encoding='utf-8') as f:
        json.dump({'replace':False,'values':items_group[i]}, f)


## Block
## -Tag
## -- All
with open('blockid\\all.json','w',encoding='utf-8') as f:
    json.dump({'replace':False,'values':blocks}, f)
## -- N
blocks_group = [[] for _ in range(items_n)]
for block in item_blocks:
    id = items.index(block)
    for i in range(items_n):
        if (id & 2**i) != 0:
            blocks_group[i].append(block)

for n, block in enumerate(notitem_blocks):
    id = n + items_num
    for i in range(items_n):
        if (id & 2**i) != 0:
            blocks_group[i].append(block)

for i in range(items_n):
    with open(f'blockid\\{i+1}.json','w',encoding='utf-8') as f:
        json.dump({'replace':False,'values':blocks_group[i]}, f)

## ItemBlock
with open('item_blocks.json','w',encoding='utf-8') as f:
    json.dump({'replace':False,'values':item_blocks}, f)
with open('notitem_blocks.json','w',encoding='utf-8') as f:
    json.dump({'replace':False,'values':notitem_blocks}, f)

## BlockItem
with open('block_items.json','w',encoding='utf-8') as f:
    json.dump({'replace':False,'values':block_items}, f)
with open('notblock_items.json','w',encoding='utf-8') as f:
    json.dump({'replace':False,'values':notblock_items}, f)


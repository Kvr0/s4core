

obj = {"parent": "usedtoblock:root", "criteria": {},"requirements": [], "rewards":{"function": "usedtoblock:usedtoblock/_"}}

for i in range(16):
    c0 = {"trigger":"item_used_on_block","conditions":{"item":{"items":["item_frame"],"nbt":"{EntityTag:{Tags:[UsedToBlock."+f'{i}'+"-0]}}"}}}
    c1 = {"trigger":"item_used_on_block","conditions":{"item":{"items":["item_frame"],"nbt":"{EntityTag:{Tags:[UsedToBlock."+f'{i}'+"-1]}}"}}}
    obj["criteria"][f"{i}-0"] = c0
    obj["criteria"][f"{i}-1"] = c1
    obj["requirements"].append([f"{i}-0",f"{i}-1"])

import os
os.makedirs('usedtoblock',exist_ok=True)

import json
with open('usedtoblock\\usedtoblock.json','w') as f:
    json.dump(obj,f)

# Find

fs = '''#> usedtoblock:usedtoblock/find/{0}
# @within function usedtoblock:usedtoblock/**
execute if entity @a[tag=this,advancements={{usedtoblock:usedtoblock={{{0}-0=true}}}}] if entity @s[tag=UsedToBlock.{0}-0] run function usedtoblock:usedtoblock/find/{1}
execute if entity @a[tag=this,advancements={{usedtoblock:usedtoblock={{{0}-1=true}}}}] if entity @s[tag=UsedToBlock.{0}-1] run function usedtoblock:usedtoblock/find/{1}
'''

for i in range(16):
    with open(f'usedtoblock\\{i}.mcfunction','w') as f:
        f.write(fs.format(i,i+1))




obj = {"parent": "usedtoblock:root", "criteria": {},"requirements": [], "rewards":{"function": "usedtoblock:usedtoblock/_"}}

for i in range(16):
    c0 = {"trigger":"item_used_on_block","conditions":{"item":{"items":["item_frame"],"nbt":"{UsedToBlock:{id:{"+f'{i}'+":0}}}"}}}
    c1 = {"trigger":"item_used_on_block","conditions":{"item":{"items":["item_frame"],"nbt":"{UsedToBlock:{id:{"+f'{i}'+":1}}}"}}}
    obj["criteria"][f"{i}-0"] = c0
    obj["criteria"][f"{i}-1"] = c1
    obj["requirements"].append([f"{i}-0",f"{i}-1"])

import json
with open('usedtoblock.json','w') as f:
    json.dump(obj,f)



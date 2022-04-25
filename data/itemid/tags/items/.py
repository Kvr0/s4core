import json

with open(r"C:\Users\s4lr0\Documents\GitHub\s4core\data\itemid\tags\items\all.json","r") as f:
    jdict = json.load(f)
    result = []
    for i, v in enumerate(jdict["values"]):
        bits = []
        for n in range(11):
            b = int(i & (1<<n) != 0)
            bits.append(b)
        s = f'{{id:{i},name:"{v}",bits:{{1:{bits[0]}b,2:{bits[1]}b,3:{bits[2]}b,4:{bits[3]}b,5:{bits[4]}b,6:{bits[5]}b,7:{bits[6]}b,8:{bits[7]}b,9:{bits[8]}b,10:{bits[9]}b,11:{bits[10]}b}}}}'
        result.append(s)
    print('['+','.join(result)+']')
        

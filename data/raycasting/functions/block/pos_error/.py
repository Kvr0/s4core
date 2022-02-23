
## TPsファイル作成

#[print(2**i) for i in range(32)]

fstr_x = '''#> raycasting:block/pos_error/tps/x_{0}
# @within function raycasting:block/pos_error/**
tp @s ~-{0} ~ ~
scoreboard players remove $raycasting:block/pos_error/_.pos[0] temporary {0}
'''
fstr_y = '''#> raycasting:block/pos_error/tps/y_{0}
# @within function raycasting:block/pos_error/**
tp @s ~ ~-{0} ~
scoreboard players remove $raycasting:block/pos_error/_.pos[1] temporary {0}
'''
fstr_z = '''#> raycasting:block/pos_error/tps/z_{0}
# @within function raycasting:block/pos_error/**
tp @s ~ ~ ~-{0}
scoreboard players remove $raycasting:block/pos_error/_.pos[2] temporary {0}
'''

fstr_mx = '''#> raycasting:block/pos_error/tps/x_m{0}
# @within function raycasting:block/pos_error/**
tp @s ~{0} ~ ~
scoreboard players add $raycasting:block/pos_error/_.pos[0] temporary {0}
'''
fstr_my = '''#> raycasting:block/pos_error/tps/y_m{0}
# @within function raycasting:block/pos_error/**
tp @s ~ ~{0} ~
scoreboard players add $raycasting:block/pos_error/_.pos[1] temporary {0}
'''
fstr_mz = '''#> raycasting:block/pos_error/tps/z_m{0}
# @within function raycasting:block/pos_error/**
tp @s ~ ~ ~{0}
scoreboard players add $raycasting:block/pos_error/_.pos[2] temporary {0}
'''

import os

os.makedirs('tps',exist_ok=True)

for i in range(8):
    with open(f'tps/x_{2**i}.mcfunction','w') as f:
        f.write(fstr_x.format(2**i))
    with open(f'tps/y_{2**i}.mcfunction','w') as f:
        f.write(fstr_y.format(2**i))
    with open(f'tps/z_{2**i}.mcfunction','w') as f:
        f.write(fstr_z.format(2**i))

    with open(f'tps/x_m{2**i}.mcfunction','w') as f:
        f.write(fstr_mx.format(2**i))
    with open(f'tps/y_m{2**i}.mcfunction','w') as f:
        f.write(fstr_my.format(2**i))
    with open(f'tps/z_m{2**i}.mcfunction','w') as f:
        f.write(fstr_mz.format(2**i))

fstr1_x = '''#> raycasting:block/pos_error/tps/x
# @within function raycasting:block/pos_error/**
'''
fstr1_y = '''#> raycasting:block/pos_error/tps/y
# @within function raycasting:block/pos_error/**
'''
fstr1_z = '''#> raycasting:block/pos_error/tps/z
# @within function raycasting:block/pos_error/**
'''

with open(f'tps/x.mcfunction','w') as f:
    f.write(fstr1_x+'\n')
    for i in range(8):
        f.write(f'execute if score $raycasting:block/pos_error/_.pos[0] temporary matches {2**i}.. at @s run function raycasting:block/pos_error/tps/x_{2**i}\n')
    for i in range(8):
        f.write(f'execute if score $raycasting:block/pos_error/_.pos[0] temporary matches ..-{2**i} at @s run function raycasting:block/pos_error/tps/x_m{2**i}\n')
    f.write(f'execute unless score $raycasting:block/pos_error/_.pos[0] temporary matches 0 run function raycasting:block/pos_error/tps/x\n')

with open(f'tps/y.mcfunction','w') as f:
    f.write(fstr1_y+'\n')
    for i in range(8):
        f.write(f'execute if score $raycasting:block/pos_error/_.pos[1] temporary matches {2**i}.. at @s run function raycasting:block/pos_error/tps/y_{2**i}\n')
    for i in range(8):
        f.write(f'execute if score $raycasting:block/pos_error/_.pos[1] temporary matches ..-{2**i} at @s run function raycasting:block/pos_error/tps/y_m{2**i}\n')
    f.write(f'execute unless score $raycasting:block/pos_error/_.pos[1] temporary matches 0 run function raycasting:block/pos_error/tps/y\n')

with open(f'tps/z.mcfunction','w') as f:
    f.write(fstr1_z+'\n')
    for i in range(8):
        f.write(f'execute if score $raycasting:block/pos_error/_.pos[2] temporary matches {2**i}.. at @s run function raycasting:block/pos_error/tps/z_{2**i}\n')
    for i in range(8):
        f.write(f'execute if score $raycasting:block/pos_error/_.pos[2] temporary matches ..-{2**i} at @s run function raycasting:block/pos_error/tps/z_m{2**i}\n')
    f.write(f'execute unless score $raycasting:block/pos_error/_.pos[2] temporary matches 0 run function raycasting:block/pos_error/tps/z\n')



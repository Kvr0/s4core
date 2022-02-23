#> raycasting:block/pos_error/tps/x
# @within function raycasting:block/pos_error/**

execute if score $raycasting:block/pos_error/_.pos[0] temporary matches 1.. at @s run function raycasting:block/pos_error/tps/x_1
execute if score $raycasting:block/pos_error/_.pos[0] temporary matches 2.. at @s run function raycasting:block/pos_error/tps/x_2
execute if score $raycasting:block/pos_error/_.pos[0] temporary matches 4.. at @s run function raycasting:block/pos_error/tps/x_4
execute if score $raycasting:block/pos_error/_.pos[0] temporary matches 8.. at @s run function raycasting:block/pos_error/tps/x_8
execute if score $raycasting:block/pos_error/_.pos[0] temporary matches 16.. at @s run function raycasting:block/pos_error/tps/x_16
execute if score $raycasting:block/pos_error/_.pos[0] temporary matches 32.. at @s run function raycasting:block/pos_error/tps/x_32
execute if score $raycasting:block/pos_error/_.pos[0] temporary matches 64.. at @s run function raycasting:block/pos_error/tps/x_64
execute if score $raycasting:block/pos_error/_.pos[0] temporary matches 128.. at @s run function raycasting:block/pos_error/tps/x_128
execute if score $raycasting:block/pos_error/_.pos[0] temporary matches ..-1 at @s run function raycasting:block/pos_error/tps/x_m1
execute if score $raycasting:block/pos_error/_.pos[0] temporary matches ..-2 at @s run function raycasting:block/pos_error/tps/x_m2
execute if score $raycasting:block/pos_error/_.pos[0] temporary matches ..-4 at @s run function raycasting:block/pos_error/tps/x_m4
execute if score $raycasting:block/pos_error/_.pos[0] temporary matches ..-8 at @s run function raycasting:block/pos_error/tps/x_m8
execute if score $raycasting:block/pos_error/_.pos[0] temporary matches ..-16 at @s run function raycasting:block/pos_error/tps/x_m16
execute if score $raycasting:block/pos_error/_.pos[0] temporary matches ..-32 at @s run function raycasting:block/pos_error/tps/x_m32
execute if score $raycasting:block/pos_error/_.pos[0] temporary matches ..-64 at @s run function raycasting:block/pos_error/tps/x_m64
execute if score $raycasting:block/pos_error/_.pos[0] temporary matches ..-128 at @s run function raycasting:block/pos_error/tps/x_m128
execute unless score $raycasting:block/pos_error/_.pos[0] temporary matches 0 run function raycasting:block/pos_error/tps/x

#> raycasting:block/pos_error/tps/y
# @within function raycasting:block/pos_error/**

execute if score $raycasting:block/pos_error/_.pos[1] temporary matches 1.. at @s run function raycasting:block/pos_error/tps/y_1
execute if score $raycasting:block/pos_error/_.pos[1] temporary matches 2.. at @s run function raycasting:block/pos_error/tps/y_2
execute if score $raycasting:block/pos_error/_.pos[1] temporary matches 4.. at @s run function raycasting:block/pos_error/tps/y_4
execute if score $raycasting:block/pos_error/_.pos[1] temporary matches 8.. at @s run function raycasting:block/pos_error/tps/y_8
execute if score $raycasting:block/pos_error/_.pos[1] temporary matches 16.. at @s run function raycasting:block/pos_error/tps/y_16
execute if score $raycasting:block/pos_error/_.pos[1] temporary matches 32.. at @s run function raycasting:block/pos_error/tps/y_32
execute if score $raycasting:block/pos_error/_.pos[1] temporary matches 64.. at @s run function raycasting:block/pos_error/tps/y_64
execute if score $raycasting:block/pos_error/_.pos[1] temporary matches 128.. at @s run function raycasting:block/pos_error/tps/y_128
execute if score $raycasting:block/pos_error/_.pos[1] temporary matches ..-1 at @s run function raycasting:block/pos_error/tps/y_m1
execute if score $raycasting:block/pos_error/_.pos[1] temporary matches ..-2 at @s run function raycasting:block/pos_error/tps/y_m2
execute if score $raycasting:block/pos_error/_.pos[1] temporary matches ..-4 at @s run function raycasting:block/pos_error/tps/y_m4
execute if score $raycasting:block/pos_error/_.pos[1] temporary matches ..-8 at @s run function raycasting:block/pos_error/tps/y_m8
execute if score $raycasting:block/pos_error/_.pos[1] temporary matches ..-16 at @s run function raycasting:block/pos_error/tps/y_m16
execute if score $raycasting:block/pos_error/_.pos[1] temporary matches ..-32 at @s run function raycasting:block/pos_error/tps/y_m32
execute if score $raycasting:block/pos_error/_.pos[1] temporary matches ..-64 at @s run function raycasting:block/pos_error/tps/y_m64
execute if score $raycasting:block/pos_error/_.pos[1] temporary matches ..-128 at @s run function raycasting:block/pos_error/tps/y_m128
execute unless score $raycasting:block/pos_error/_.pos[1] temporary matches 0 run function raycasting:block/pos_error/tps/y

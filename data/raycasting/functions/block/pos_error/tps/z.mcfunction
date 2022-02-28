#> raycasting:block/pos_error/tps/z
# @within function raycasting:block/pos_error/**

execute if score $raycasting:block/pos_error/_.pos[2] temporary matches 1.. at @s run function raycasting:block/pos_error/tps/z_1
execute if score $raycasting:block/pos_error/_.pos[2] temporary matches 2.. at @s run function raycasting:block/pos_error/tps/z_2
execute if score $raycasting:block/pos_error/_.pos[2] temporary matches 4.. at @s run function raycasting:block/pos_error/tps/z_4
execute if score $raycasting:block/pos_error/_.pos[2] temporary matches 8.. at @s run function raycasting:block/pos_error/tps/z_8
execute if score $raycasting:block/pos_error/_.pos[2] temporary matches 16.. at @s run function raycasting:block/pos_error/tps/z_16
execute if score $raycasting:block/pos_error/_.pos[2] temporary matches 32.. at @s run function raycasting:block/pos_error/tps/z_32
execute if score $raycasting:block/pos_error/_.pos[2] temporary matches 64.. at @s run function raycasting:block/pos_error/tps/z_64
execute if score $raycasting:block/pos_error/_.pos[2] temporary matches 128.. at @s run function raycasting:block/pos_error/tps/z_128
execute if score $raycasting:block/pos_error/_.pos[2] temporary matches ..-1 at @s run function raycasting:block/pos_error/tps/z_m1
execute if score $raycasting:block/pos_error/_.pos[2] temporary matches ..-2 at @s run function raycasting:block/pos_error/tps/z_m2
execute if score $raycasting:block/pos_error/_.pos[2] temporary matches ..-4 at @s run function raycasting:block/pos_error/tps/z_m4
execute if score $raycasting:block/pos_error/_.pos[2] temporary matches ..-8 at @s run function raycasting:block/pos_error/tps/z_m8
execute if score $raycasting:block/pos_error/_.pos[2] temporary matches ..-16 at @s run function raycasting:block/pos_error/tps/z_m16
execute if score $raycasting:block/pos_error/_.pos[2] temporary matches ..-32 at @s run function raycasting:block/pos_error/tps/z_m32
execute if score $raycasting:block/pos_error/_.pos[2] temporary matches ..-64 at @s run function raycasting:block/pos_error/tps/z_m64
execute if score $raycasting:block/pos_error/_.pos[2] temporary matches ..-128 at @s run function raycasting:block/pos_error/tps/z_m128
execute unless score $raycasting:block/pos_error/_.pos[2] temporary matches 0 run function raycasting:block/pos_error/tps/z

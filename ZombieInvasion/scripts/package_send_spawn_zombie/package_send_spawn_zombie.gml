///@param x
///@param y
///@param uid

var _buff = create_package(PackageTypes.SpawnZombie);
buffer_write(_buff, buffer_f32, argument0);
buffer_write(_buff, buffer_f32, argument1);
buffer_write(_buff, buffer_s32, argument2);

send_package(_buff);
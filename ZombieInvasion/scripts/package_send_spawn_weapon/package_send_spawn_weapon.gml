///@param x
///@param y
var _buff = create_package(PackageTypes.SpawnWeapon);

buffer_write(_buff, buffer_f32, argument0);
buffer_write(_buff, buffer_f32, argument1);

send_package(_buff);
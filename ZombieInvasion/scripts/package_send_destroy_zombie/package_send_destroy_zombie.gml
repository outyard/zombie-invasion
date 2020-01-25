///@param uid

var _buff = create_package(PackageTypes.DestroyZombie);
buffer_write(_buff, buffer_s32, argument0);

send_package(_buff);
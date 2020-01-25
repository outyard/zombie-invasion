///@param zombie

var _buff = create_package(PackageTypes.SyncZombie);
var _zomb = argument0;
buffer_write(_buff, buffer_s32, _zomb.uid);
buffer_write(_buff, buffer_f32, _zomb.x);
buffer_write(_buff, buffer_f32, _zomb.y);

send_package(_buff);
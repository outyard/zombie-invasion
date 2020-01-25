///@param x
///@param y
///@param angle
///@param spdX
///@param spdY

var _buff = create_package(PackageTypes.FiredGun);
buffer_write(_buff, buffer_f32, argument0);
buffer_write(_buff, buffer_f32, argument1);

buffer_write(_buff, buffer_f32, argument2);
buffer_write(_buff, buffer_f32, argument3);
buffer_write(_buff, buffer_f32, argument4);

send_package(_buff);
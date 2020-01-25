var _buff = argument0;

var _x = buffer_read(_buff, buffer_f32);
var _y = buffer_read(_buff, buffer_f32);

var _inst = instance_create_depth(_x, _y, 0, oZombie);
_inst.uid = buffer_read(_buff, buffer_s32);
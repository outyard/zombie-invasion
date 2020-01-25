var _buff = argument0;

var _uid = buffer_read(_buff, buffer_s32);
var _x = buffer_read(_buff, buffer_f32);
var _y = buffer_read(_buff, buffer_f32);
with (oZombie) {
	if uid == _uid {
		x = _x;
		y = _y;
		break;
	}
}
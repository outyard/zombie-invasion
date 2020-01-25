var _buff = argument0;

var _uid = buffer_read(_buff, buffer_s32);

with (oZombie) {
	if (_uid == uid) {
		instance_destroy();	
	}
}
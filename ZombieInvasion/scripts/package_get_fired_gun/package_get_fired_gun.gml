var _buff = argument0;

var _x = buffer_read(_buff, buffer_f32);
var _y = buffer_read(_buff, buffer_f32);

var _direction = buffer_read(_buff, buffer_f32);
var _speedX = buffer_read(_buff, buffer_f32);
var _speedY = buffer_read(_buff, buffer_f32);

var _b = instance_create_depth(_x, _y, 0, oBullet);
_b.image_angle = _direction;
_b.spdX = _speedX;
_b.spdY = _speedY;

oPlayer.recoil = 5;
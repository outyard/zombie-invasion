var _buff = argument0;

var _x = buffer_read(_buff, buffer_f32);
var _y = buffer_read(_buff, buffer_f32);
 

var _inputX = buffer_read(_buff, buffer_f32);
var _inputY = buffer_read(_buff, buffer_f32);
var _inputAim = buffer_read(_buff, buffer_f32);

var _spdX = buffer_read(_buff, buffer_f32);
var _spdY = buffer_read(_buff, buffer_f32);



oPlayer.x = _x;
oPlayer.y = _y;
oPlayer.inputX = _inputX;
oPlayer.inputY = _inputY;
oPlayer.inputAim = _inputAim;
oPlayer.spdX = _spdX;
oPlayer.spdY = _spdY;
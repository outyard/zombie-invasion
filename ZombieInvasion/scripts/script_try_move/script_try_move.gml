///@param xSpd
///@param ySpd

var _moveX = argument0;
var _moveY = argument1;

if (instance_place(x + _moveX, y + _moveY, oBlock) == noone) {
	x += _moveX;
	y += _moveY;
} else {
	repeat(abs(_moveX)) {
		var _mX = sign(_moveX);
		if (instance_place(x + _mX, y, oBlock) == noone) {
			x += _mX;
		}
	}
	repeat(abs(_moveY)) {
		var _mY = sign(_moveY);
		if (instance_place(x, y + _mY, oBlock) == noone) {
			y += _mY;
		}
	}
}
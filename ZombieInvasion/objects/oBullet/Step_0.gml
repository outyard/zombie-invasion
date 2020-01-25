x += spdX;
y += spdY;

var _inst = instance_place(x, y, oZombie);
if (_inst) {
	_inst.spdX += spdX*0.5;
	_inst.spdY += spdY*0.5;
	_inst.hurtTimer = 10;
	_inst.hp -= 1;
	screenshake(5);
	instance_destroy();
	exit;
}

if (instance_place(x, y, oBlock)) {
	screenshake(3);
	instance_destroy();	
	exit;
}
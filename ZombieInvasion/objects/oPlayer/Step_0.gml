// Fetch input

depth = -y;

if (global.playerType == PlayerType.Player) {
	inputX = gamepad_axis_value(0, gp_axislh);
	inputY = gamepad_axis_value(0, gp_axislv);
	
	if (abs(inputX) < 0.3) {
		inputX = 0;	
	}
	
	if (abs(inputY) < 0.3) {
		inputY = 0;	
	}
	
	var _aimX = gamepad_axis_value(0, gp_axisrh);
	var _aimY = gamepad_axis_value(0, gp_axisrv);
	if (point_distance(0, 0, _aimX, _aimY) > 0.3) {
		inputAim = angle_lerp(inputAim, point_direction(0, 0, _aimX, _aimY), 0.1);	
	}

} else {
	// input set by network	
}

spdX = lerp(spdX, inputX, 0.3);
spdY = lerp(spdY, inputY, 0.3);

recoil--;
if (recoil < 0) {
	recoil = 0;	
}

damageCooldown--;

var _moveX = spdX * spd;
var _moveY = spdY * spd;

script_try_move(_moveX, _moveY);

image_speed = _moveX*0.2;


if (global.playerType == PlayerType.Player) {
	gunTimer--;
	if (gunTimer < 0) {
		if (gamepad_button_check(0, gp_shoulderrb)) {
			var _b = instance_create_depth(x, y-15, 0, oBullet);
			_b.spdX = lengthdir_x(10, inputAim);
			_b.spdY = lengthdir_y(10, inputAim);
			_b.image_angle = inputAim;
			var _gunData = guns[gunType];
			
			gunTimer = _gunData[GunData.Cooldown];
			recoil = 5;
			
			screenshake(5);
			package_send_fired_gun(_b.x, _b.y, _b.image_angle, _b.spdX, _b.spdY)
		}
	}
	package_send_player_data();
}
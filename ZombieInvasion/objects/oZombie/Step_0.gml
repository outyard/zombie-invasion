pathingUpdateTime--;
syncUpdateTime--;
hurtTimer--;
depth = -y;

var _targetX = oPlayer.x;
var _targetY = oPlayer.y;

var _stepTargetX = 0;
var _stepTargetY = 0;

if (global.playerType == PlayerType.Player && syncUpdateTime < 0) {
	syncUpdateTime = 600;
	package_send_sync_zombie(id);
}


if (collision_line(x, y, _targetX, _targetY, oBlock, false, true) == noone) {
	_stepTargetX = _targetX - x;
	_stepTargetY = _targetY - y;
	
} else {
	if (pathingUpdateTime < 0) {
		pathingUpdateTime = 300;
		mp_grid_path(oControl.pathGrid, path, x, y, _targetX, _targetY, true);
		currentPathNode = 0;
	}
	
	var _nodeX = path_get_point_x(path, currentPathNode + 1);
	var _nodeY = path_get_point_y(path, currentPathNode + 1);
	
	if (point_distance(x, y, _nodeX, _nodeY) < 15) {
		currentPathNode++;
	}
	
	_stepTargetX = _nodeX - x;
	_stepTargetY = _nodeY - y;
}

var _stepNormalDist = point_distance(0, 0, _stepTargetX, _stepTargetY);
_stepTargetX /= _stepNormalDist;
_stepTargetY /= _stepNormalDist;

targetSide = shift_value(targetSide, sign(_stepTargetX), 0.2);

spdX += _stepTargetX * 0.2;
spdY += _stepTargetY * 0.2;

spdX = lerp(spdX, 0, 0.1);
spdY = lerp(spdY, 0, 0.1);

script_try_move(spdX, spdY);

image_speed = spdX * 0.2;

if (global.playerType == PlayerType.Player) {
	if (point_distance(x, y, oPlayer.x, oPlayer.y) < 10) {
		with oPlayer {
			if (damageCooldown < 0) {
				hp--;
				damageCooldown = 60;
				screenshake(15);
			}
		}
	}
	
	
	if (hp <= 0) {
		oPlayer.killedZombies++;
		
		if (oPlayer.killedZombies == 5) {
			var _inst = instance_create_depth(x, y, 0, oRifle);
			package_send_spawn_weapon(x, y);	
		}
		
		package_send_destroy_zombie(uid);
		instance_destroy();	
	}
}
screenShake--;
if (screenShake < 0) {
	screenShake = 0;	
}

var _shakeX = random_range(-screenShake, screenShake);
var _shakeY = random_range(-screenShake, screenShake);

if (global.playerType == PlayerType.Player) {
	camera_set_view_size(camera, width/2, height/2);
	camera_set_view_pos(camera, oPlayer.x - width/4 + _shakeY, oPlayer.y - height/4 + _shakeX);
} else {
	camera_set_view_size(camera, width, height);
	camera_set_view_pos(camera, oZombiePlayer.x, oZombiePlayer.y);
}
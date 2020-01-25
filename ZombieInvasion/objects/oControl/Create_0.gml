enum PlayerType {
	Player = 0,
	Zombie = 1
}

global.playerType = PlayerType.Zombie;

//*
if (os_type == os_windows) {
	global.playerType = PlayerType.Player;	
}

/*/
if (os_type == os_windows) {
	/// Temp testing shit
	var _s = parameter_string_all();
	// Make sure we're not the second window
	if (string_pos("second_instance", _s) == 0) {
		// Build the full launch command
		var _f = _s + " \"second_instance\"";

		execute_shell(_f , false);
		window_set_caption("Player 1");
	} else {
		global.playerType = PlayerType.Player;	
		window_set_caption("Player 2");
	}
}
/**/


var _w, _h;


if (global.playerType == PlayerType.Player) {
	_w = 1280;
	_h = 720;
	instance_create_depth(0, 0, 0, oServer);
	window_set_position(600, 100);
} else {
	_w = 567;
	_h = 1009;
	display_set_gui_size(720, 1280);
	instance_create_depth(0, 0, 0, oZombiePlayer);
	instance_create_depth(0, 0, 0, oClient);
	window_set_position(0, 40)
}

window_set_size(_w, _h);
view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = _w;
view_hport[0] = _h;
camera = view_camera[0];
surface_resize(application_surface, _w, _h);

width = _w;
height = _h;

screenShake = 0;

var _cellSize = 16;

pathGrid = mp_grid_create(0, 0, ceil(room_width/_cellSize), ceil(room_height/_cellSize), _cellSize, _cellSize);
mp_grid_add_instances(pathGrid, oBlock, true);

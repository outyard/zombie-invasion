var _mouseX = device_mouse_x_to_gui(0);
var _mouseY = device_mouse_y_to_gui(0);


if (device_mouse_check_button_pressed(0, mb_left)) {
	mouseStartX = _mouseX;
	mouseStartY = _mouseY;
	
	if (mouseStartY > 1180) {
		mouseOnCard = true;	
		
		selectedCard = -1;
		
		var _len = ds_list_size(cards);
		for (var i=0;i < _len; i++) {
			var _card = cards[| i];
			var _pos = _card[CardData.Position];
			if (point_in_rectangle(_mouseX, _mouseY, _pos-30, 1180, _pos+60, 1280)) {
				selectedCard = i;
			}
		}
	}
}

if (device_mouse_check_button(0, mb_left)) {
	if (panning == false
	 && point_distance(_mouseX, _mouseY, mouseStartX, mouseStartY) > 10
	 && mouseOnCard == false) {
		panning = true;
		panningStartX = x;
		panningStartY = y;
	}
	
	if (selectedCard >= 0) {
		if (point_distance(_mouseX, _mouseY, mouseStartX, mouseStartY) > 10) {
			// convert card into thing
			var _card = cards[| selectedCard];
			zombieInHand = _card[CardData.Object];
			ds_list_delete(cards, selectedCard);
			selectedCard = -1;
		}
	}
}

if (device_mouse_check_button_released(0, mb_left)) {
	panning = false;
	mouseOnCard = false;
	
	if (zombieInHand != noone) {
		var _inst = instance_create_depth(mouse_x, mouse_y, 0, zombieInHand);
		_inst.uid = global.uidCounter++;
		package_send_spawn_zombie(_inst.x, _inst.y, _inst.uid);	

		zombieInHand = noone;
	}
}

if (panning) {
	x = panningStartX - (_mouseX - mouseStartX);
	y = panningStartY - (_mouseY - mouseStartY);
}

x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);


var _maxMovement = -30;

var _len = ds_list_size(cards);
for (var i=0;i<_len;i++) {
	var _card = cards[| i];
	var _pos = _card[CardData.Position];
	if (_pos > _maxMovement + 60) {
		_pos--;
	} 
	_maxMovement = _pos;
	_card[@ CardData.Position] = _pos;
}

var _chance = 200/log2(framesRun+5);

if _maxMovement < 720 {
	if (irandom(_chance) == 0) {
		ds_list_add(cards, [oZombie, sZombieCard, 780])
	}
}
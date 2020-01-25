draw_set_color(c_gray);
draw_rectangle(0, 1280-100, 720, 1280, false);

var _offset = (current_time*0.1) mod 100;

draw_set_color(c_black);
for (var i=0;i<15;i++) {
	draw_rectangle(i*100 - _offset, 1180, i*100 - _offset, 1280, false);
}

var _len = ds_list_size(cards);

for (var i=0;i<_len;i++) {
	var _card = cards[|i];
	draw_sprite_ext(_card[CardData.Sprite], 0, _card[CardData.Position], 1220, 1.5, 1.5, 0, c_white, 1);	
}

var _mouseX = device_mouse_x_to_gui(0);
var _mouseY = device_mouse_y_to_gui(0);

if (zombieInHand != noone) {
	var _spr = object_get_sprite(zombieInHand);
	draw_sprite(_spr, 0, _mouseX, _mouseY);
}
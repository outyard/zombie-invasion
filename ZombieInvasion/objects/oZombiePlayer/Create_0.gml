device_mouse_dbclick_enable(false);

mouseStartX = 0;
mouseStartY = 0;
panning = false;

mouseOnCard = false;

enum CardData {
	Object,
	Sprite,
	Position
}

cards = ds_list_create();
selectedCard = -1;
zombieInHand = noone;
framesRun = 0;
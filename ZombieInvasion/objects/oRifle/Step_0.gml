depth = -y;

if (instance_place(x, y, oPlayer)) {
	package_send_change_weapon();
	oPlayer.gunType = GunTypes.Rifle;
	instance_destroy();
}
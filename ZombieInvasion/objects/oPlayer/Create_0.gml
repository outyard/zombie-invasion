spd = 4;

spdX = 0;
spdY = 0;

inputX = 0;
inputY = 0;

inputAim = 0;

gunTimer = 0;
recoil = 0;

hp = 5;
damageCooldown = 0;

killedZombies = 0;

enum GunTypes {
	Gun,
	Rifle
	
}

enum GunData {
	Sprite,
	Cooldown
}

guns = array_create(2);
guns[GunTypes.Gun] = [sGun, 20];
guns[GunTypes.Rifle] = [sRifle, 8];

gunType = GunTypes.Gun;
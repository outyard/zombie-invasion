
var _col = damageCooldown < 0 ? c_white : c_red;
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, _col, image_alpha);

var _gunData = guns[gunType];

			
var _gunSprite = _gunData[GunData.Sprite];

var _recoilX = lengthdir_x(recoil, inputAim*3);
var _recoilY = lengthdir_y(recoil, inputAim*3);

if (abs(angle_difference(inputAim, 180)) < 90) {
	draw_sprite_ext(_gunSprite, 0, x+5 - _recoilX, y-20 - _recoilY, -1, 1, 180+inputAim, c_white, 1);
} else {
	draw_sprite_ext(_gunSprite, 0, x+5 - _recoilX, y-20 - _recoilY, 1, 1, inputAim, c_white, 1);
}
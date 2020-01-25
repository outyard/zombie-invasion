var _buff = create_package(PackageTypes.PlayerData);

buffer_write(_buff, buffer_f32, oPlayer.x);
buffer_write(_buff, buffer_f32, oPlayer.y);
buffer_write(_buff, buffer_f32, oPlayer.inputX);
buffer_write(_buff, buffer_f32, oPlayer.inputY);
buffer_write(_buff, buffer_f32, oPlayer.inputAim);
buffer_write(_buff, buffer_f32, oPlayer.spdX);
buffer_write(_buff, buffer_f32, oPlayer.spdY);

send_package(_buff);
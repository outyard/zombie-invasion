///@param code

var _buff = global.writeBuffer;
buffer_seek(_buff, buffer_seek_start, 2);
buffer_write(_buff, buffer_u16, argument0);

return _buff;
var _type = async_load[? "type"];

if (_type == network_type_connect) {
	socket = async_load[? "socket"];	
}

if (_type == network_type_data) {
	var _buff = async_load[? "buffer"];	
	var _size = async_load[? "size"];
	recieve_package(_buff, _size);
}
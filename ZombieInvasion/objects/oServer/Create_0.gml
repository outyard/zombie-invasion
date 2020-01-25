event_inherited();

server = network_create_server(network_socket_tcp, 3456, 8);
socket = noone;
setup_package();

global.uidCounter = 0x0;
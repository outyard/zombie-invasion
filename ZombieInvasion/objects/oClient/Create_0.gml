event_inherited();

socket = network_create_socket(network_socket_tcp);
network_connect(socket, "localhost", 3456);

setup_package();

global.uidCounter = 0xFFFF;
///@param buffer
var _buff = argument0;
if (oNetworkParent.socket != noone) {
	var _len = buffer_tell(_buff);
	buffer_poke(_buff, 0, buffer_u16, _len-2);
	network_send_packet(oNetworkParent.socket, _buff,_len);
}
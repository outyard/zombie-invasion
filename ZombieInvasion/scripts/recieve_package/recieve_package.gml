var _data = argument0;
var _size = argument1;

while(_size > 0) {
	if (!bufferActive) {
		//Begin reading
		bufferIncommingSize = buffer_read(_data, buffer_u16);
		bufferActive = true;
		_size-=2;
	}
		
	var _read = min(_size, bufferIncommingSize);

	buffer_copy(_data, buffer_tell(_data), _read, bufferIncomming, bufferIncommingIndex);
	buffer_seek(_data, buffer_seek_relative, _read);
		
	_size -= _read;
	bufferIncommingIndex += _read;
		
	if (bufferIncommingIndex >= bufferIncommingSize) {
		buffer_seek(bufferIncomming, buffer_seek_start, 0);
			
		var _code = buffer_read(bufferIncomming, buffer_u16);
		script_execute(packageHandlers[_code], bufferIncomming);
		
		bufferActive = false;
		bufferIncommingIndex = 0;
		bufferIncommingSize = 0;
	}
}


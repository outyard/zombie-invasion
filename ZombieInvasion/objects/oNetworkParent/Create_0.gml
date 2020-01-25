global.writeBuffer = buffer_create(0xFFF, buffer_fixed, 1);
bufferIncomming = buffer_create(0xFFF, buffer_fixed, 1);
bufferActive = false;
bufferIncommingIndex = 0;
bufferIncommingSize = 0;
#include "JSystem/JSupport/JSUOutputStream.hpp"

JSUOutputStream::~JSUOutputStream() {}

s32 JSUOutputStream::write(const void* buffer, s32 length) {

	s32 bytes_written = this->writeData(buffer, length);

	if (bytes_written != length) {
		this->set_eof();
	}

	return bytes_written;
}

s32 JSUOutputStream::skip(s32 length, s8 fill) {

	s32 i;
	for (i = 0; i < length; i++) {
		s32 bytes_written = this->writeData(&fill, 1);
		if (bytes_written != sizeof(fill)) {
			this->set_eof();
			break;
		}
	}

	return i;
}

void JSURandomOutputStream::seek(s32 pos, JSUStreamSeekFrom whence) {
	this->seekPos(pos, whence);
	this->clear_eof();
}

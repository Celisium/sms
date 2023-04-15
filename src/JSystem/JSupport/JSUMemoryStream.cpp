#include "JSystem/JSupport/JSUMemoryStream.hpp"

#include "Runtime.PPCEABI.H/__mem.h"

void JSUMemoryInputStream::setBuffer(const void* buffer, s32 length) {
	this->buffer = buffer;
	this->length = length;
	this->position = 0;
}

s32 JSUMemoryInputStream::readData(void* buffer, s32 length) {

	if (this->position + length > this->length) {
		length = this->length - this->position;
	}

	if (length > 0) {
		memcpy(buffer, (void*)((s32)this->buffer + this->position), length);
		this->position += length;
	}

	return length;

}

s32 JSUMemoryInputStream::seekPos(s32 pos, JSUStreamSeekFrom whence) {
	s32 old_pos = this->position;

	switch (whence) {
		case JSUSTREAM_SEEK_SET:
			this->position = pos;
			break;
		case JSUSTREAM_SEEK_END:
			this->position = this->length - pos;
			break;
		case JSUSTREAM_SEEK_CUR:
			this->position += pos;
			break;
	}

	if (this->position < 0) {
		this->position = 0;
	}

	if (this->position > this->length) {
		this->position = this->length;
	}

	return this->position - old_pos;
}

void JSUMemoryOutputStream::setBuffer(void* buffer, s32 length) {
	this->buffer = buffer;
	this->length = length;
	this->position = 0;
}

s32 JSUMemoryOutputStream::writeData(const void* buffer, s32 length) {

	if (this->position + length > this->length) {
		length = this->length - this->position;
	}

	if (length > 0) {
		memcpy((void*)((s32)this->buffer + this->position), buffer, length);
		this->position += length;
	}

	return length;
}

s32 JSUMemoryOutputStream::seekPos(s32 pos, JSUStreamSeekFrom whence) {
	s32 old_pos = this->position;

	switch (whence) {
		case JSUSTREAM_SEEK_SET:
			this->position = pos;
			break;
		case JSUSTREAM_SEEK_END:
			this->position = this->length - pos;
			break;
		case JSUSTREAM_SEEK_CUR:
			this->position += pos;
			break;
	}

	if (this->position < 0) {
		this->position = 0;
	}

	if (this->position > this->length) {
		this->position = this->length;
	}

	return this->position - old_pos;
}

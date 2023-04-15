#include "JSystem/JSupport/JSUInputStream.hpp"

JSUInputStream::~JSUInputStream() {}

s32 JSUInputStream::read(void* buffer, s32 num_bytes) {
	s32 bytes_read = this->readData(buffer, num_bytes);
	if (bytes_read != num_bytes) {
		this->set_eof();
	}
	return bytes_read;
}

const char* JSUInputStream::readString() {

	u16 string_length;
	u32 bytes_read = this->readData(&string_length, sizeof(string_length));

	if (bytes_read != 2) {
		this->set_eof();
		return nullptr;
	}

	char* string = new char[string_length + 1];

	if (!string) {
		bytes_read = this->skip(string_length);
	} else {
		bytes_read = this->readData(string, string_length);
		string[bytes_read] = '\0';
	}

	if ((s32)bytes_read != string_length) {
		this->set_eof();
	}

	return string;

}

char* JSUInputStream::readString(char* string, u16 max_length) {
    
	u16 string_length;
	s32 bytes_read = this->readData(&string_length, sizeof(string_length));
	if (bytes_read != sizeof(string_length)) {
		string[0] = 0;
		this->set_eof();
		return nullptr;
	}

	if (string_length < max_length) {
		bytes_read = this->readData(string, string_length);
		string[bytes_read] = 0;
	} else {
		bytes_read = this->readData(string, max_length - 1);
		string[bytes_read] = 0;
		bytes_read += this->skip(string_length - (max_length - 1));
	}

	if (bytes_read != string_length) {
		this->set_eof();
	}

	return string;

}

s32 JSUInputStream::skip(s32 count) {
	s32 skip_count = 0;
	u8 buffer[1];
	while (count > skip_count) {
		if (this->readData(&buffer, 1) != sizeof(buffer)) {
			this->set_eof();
			break;
		}
		skip_count++;
	}
	return skip_count;
}


s32 JSURandomInputStream::align(s32 alignment) {
	s32 current_pos = this->getPosition();
	s32 offset = (alignment - 1 + current_pos) & ~(alignment - 1);
	s32 alignment_offset = offset - current_pos;
	if (alignment_offset != 0) {
		s32 seek_len = this->seekPos(offset, JSUSTREAM_SEEK_SET);
		if (seek_len != alignment_offset) {
			this->set_eof();
		}
	}
	return alignment_offset;
}

s32 JSURandomInputStream::skip(s32 arg_0) {
	s32 val = this->seekPos(arg_0, JSUSTREAM_SEEK_CUR);
	if (val != arg_0) {
		this->set_eof();
	}
	return val;
}

s32 JSURandomInputStream::peek(void* buffer, s32 num_bytes) {
	s32 old_pos = this->getPosition();
	s32 bytes_read = this->read(buffer, num_bytes);
	
	if (bytes_read != 0) {
		this->seekPos(old_pos, JSUSTREAM_SEEK_SET);
	}
	
	return bytes_read;
}

s32 JSURandomInputStream::seek(s32 arg_0, JSUStreamSeekFrom arg_1) {
	s32 seek_result = this->seekPos(arg_0, arg_1);
	this->clear_eof();
	return seek_result;
}

#include "JSystem/JUtility/JUTFont.hpp"

JUTFont::JUTFont() {
	this->setCharColor(JUtility::TColor());
	this->valid = false;
	this->fixed_width = 0;
}

void JUTFont::initiate() {}

void JUTFont::setCharColor(JUtility::TColor color) {
	this->color_1 = color;
	this->color_2 = color;
	this->color_3 = color;
	this->color_4 = color;
}

void JUTFont::setGradColor(JUtility::TColor color_1, JUtility::TColor color_2) {
	this->color_1 = color_1;
	this->color_2 = color_1;
	this->color_3 = color_2;
	this->color_4 = color_2;
}

f32 JUTFont::drawString_size_scale(f32 arg_0, f32 arg_1, f32 arg_2, f32 arg_3, const char* str, u32 usz, bool arg_6) {
	f32 temp = arg_0;

	for (; usz > 0; usz--, str++) {
		u32 b = *(u8*)str;
		if (this->isLeadByte(b)) {
			str++;
			b <<= 8;
			b |= *(u8*)str;
			usz--;
		}

		arg_0 += this->drawChar_scale(arg_0, arg_1, arg_2, arg_3, b, arg_6);
		arg_6 = true;
	}

	return arg_0 - temp;
}

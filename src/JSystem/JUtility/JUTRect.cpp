#include "JSystem/JUtility/JUTRect.hpp"

void JUTRect::set(int _left, int _top, int _right, int _bottom) {
	this->left   = _left;
	this->top    = _top;
	this->right  = _right;
	this->bottom = _bottom;
}

void JUTRect::copy(const JUTRect& other) {
	this->left   = other.left;
	this->top    = other.top;
	this->right  = other.right;
	this->bottom = other.bottom;
}

void JUTRect::add(int x, int y) {
	this->left   += x;
	this->right  += x;
	this->top    += y;
	this->bottom += y;
}

bool JUTRect::intersect(const JUTRect& other) {

	if (this->left < other.left) {
		this->left = other.left;
	}

	if (this->top < other.top) {
		this->top = other.top;
	}

	if (this->right > other.right) {
		this->right = other.right;
	}

	if (this->bottom > other.bottom) {
		this->bottom = other.bottom;
	}

	bool ret = !this->isEmpty();
	return ret;
}

void JUTRect::move(int x, int y) {

	int width  = this->right  - this->left;
	int height = this->bottom - this->top;

	this->left = x;
	this->top  = y;

	this->right  = this->left + width;
	this->bottom = this->top  + height;
}

void JUTRect::resize(int width, int height) {
	this->right  = this->left + width;
	this->bottom = this->top  + height;
}

void JUTRect::reform(int delta_left, int delta_top, int delta_right, int delta_bottom) {
	this->left   += delta_left;
	this->top    += delta_top;
	this->right  += delta_right;
	this->bottom += delta_bottom;
}

void JUTRect::normalize() {

	if (this->left > this->right) {
		int temp = this->right;
		this->right = this->left;
		this->left  = temp;
	}

	int temp_top  = this->top;
	int temp_bottom = this->bottom;

	if (this->top > this->bottom) {
		this->bottom = temp_top;
		this->top = temp_bottom;
	}
}

bool JUTRect::isEmpty() const {

	bool ret = true;

	if (this->left < this->right && this->top < this->bottom) {
		ret = false;
	}

	return ret;
}

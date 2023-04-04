#ifndef JSYSTEM_JUTILITY_JUTRECT_H
#define JSYSTEM_JUTILITY_JUTRECT_H

#include "dolphin.h"

class JUTRect {

	public:

	void set(int left, int top, int right, int bottom);
	void copy(const JUTRect& other);
	void add(int x, int y);
	bool intersect(const JUTRect& other);
	void move(int x, int y);
	void resize(int width, int height);
	void reform(int delta_left, int delta_top, int delta_right, int delta_bottom);
	void normalize();
	bool isEmpty() const;

	int left;
	int top;
	int right;
	int bottom;

};

#endif

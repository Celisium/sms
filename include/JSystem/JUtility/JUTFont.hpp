#ifndef JSYSTEM_JUTILITY_JUTFONT_H
#define JSYSTEM_JUTILITY_JUTFONT_H

#include "JSystem/JUtility/JUTColor.hpp"
#include "MSL_C.PPCEABI.bare.H/string.h"

struct ResFONT {
	struct INF1 {
		u32 magic;
		u32 size;
		u16 font_type;
		u16 ascent;
		u16 descent;
		u16 width;
		u16 leading;
		u16 default_code;
	};

	struct WID1 {
		u32 magic;
		u32 size;
		u16 start_code;
		u16 end_code;
		u8 chunk_num[4];
	};

	struct MAP1 {
		u32 magic;
		u32 size;
		u16 mapping_method;
		u16 start_code;
		u16 end_code;
		u16 num_entries;
		u16 leading;
	};

	struct GLY1 {
		u32 magic;
		u32 size;
		u16 start_code;
		u16 end_code;
		u16 cell_width;
		u16 cell_height;
		u32 texture_size;
		u16 texture_format;
		u16 num_rows;
		u16 num_columns;
		u16 texture_width;
		u16 texture_height;
	};

	u64 magic;
	u32 file_size;
	u32 num_blocks;
	u8 padding[0x10];
	u8 data[];
};

class JUTFont {
	public:
	
	JUTFont();
	
	virtual ~JUTFont() {}

	struct TWidth {
		u8 unknown_00;
		u8 unknown_01;
	};

	virtual void setGX() = 0;
	virtual void setGX(JUtility::TColor col_1, JUtility::TColor col_2) { this->setGX(); }
	virtual f32 drawChar_scale(f32 a1, f32 a2, f32 a3, f32 a4, int a5, bool a6) = 0;
	virtual int getLeading() const = 0;
	virtual u16 getAscent() const = 0;
	virtual u16 getDescent() const = 0;
	virtual s32 getHeight() const = 0;
	virtual s32 getWidth() const = 0;
	virtual void getWidthEntry(int i_no, TWidth* width) const = 0;
	virtual u16 getFontType() const = 0;
	virtual bool isLeadByte(int a1) const = 0;

	void initiate();
	void setCharColor(JUtility::TColor col_1);
	void setGradColor(JUtility::TColor col_1, JUtility::TColor col_2);
	f32 drawString_size_scale(f32 pos_x, f32 pos_y, f32 width, f32 height, const char* str, u32 usz, bool visible);

	void drawString(int pos_x, int pos_y, const char* str, bool visible) {
		this->drawString_size(pos_x, pos_y, str, strlen(str), visible);
	}

	void drawString_size(int pos_x, int pos_y, const char* str, u32 len, bool visible) {
		this->drawString_size_scale(pos_x, pos_y, this->getWidth(), this->getHeight(), str, len, visible);
	}

	void drawString_scale(f32 pos_x, f32 pos_y, f32 width, f32 height, const char* str, bool visible) {
		this->drawString_size_scale(pos_x, pos_y, width, height, str, strlen(str), visible);
	}

	int getWidth(int i_no) const {
		TWidth width;
		this->getWidthEntry(i_no, &width);
		return width.unknown_01;
	}

	bool isValid() const { return this->valid; }

	bool valid;
	bool fixed;
	int fixed_width;
	JUtility::TColor color_1;
	JUtility::TColor color_2;
	JUtility::TColor color_3;
	JUtility::TColor color_4;
};

#endif

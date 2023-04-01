#include "JSystem/JStage/JSGObject.hpp"

namespace JStage {

TObject::~TObject() {}

s32  TObject::JSGGetName() const { return 0; }
s32  TObject::JSGGetFlag() const { return 0; }
void TObject::JSGSetFlag(u32) {}
s32  TObject::JSGGetData(u32, void*, u32) const { return 0; }
void TObject::JSGSetData(u32, void const*, u32) {}
void TObject::JSGGetParent(TObject**, u32*) const {}
void TObject::JSGSetParent(TObject*, u32) {}
void TObject::JSGSetRelation(bool, TObject*, u32) {}


}

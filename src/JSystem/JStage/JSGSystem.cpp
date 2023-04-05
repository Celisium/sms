#include "JSystem/JStage/JSGSystem.hpp"

namespace JStage {

TSystem::~TSystem() {}

TEObject TSystem::JSGFGetType() const {
	return (TEObject)1;
}

TObject* TSystem::JSGFindObject(const char*, TEObject) const { return nullptr; }
TObject* TSystem::JSGCreateObject(const char*, TEObject, u32) { return nullptr; }
void TSystem::JSGDestroyObject(TObject*) {}
u32 TSystem::JSGGetSystemData(u32) { return 0; }
void TSystem::JSGSetSystemData(u32, u32) {}

}


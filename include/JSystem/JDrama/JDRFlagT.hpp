#ifndef JSYSTEM_JDRAMA_JDRFLAGT_HPP
#define JSYSTEM_JDRAMA_JDRFLAGT_HPP

namespace JDrama {

template <typename T>
struct TFlagT {

	T flag;

	TFlagT(const TFlagT& other) : flag(other.flag) {}
	TFlagT(T flag);// : flag(flag) {}

};

}

#endif

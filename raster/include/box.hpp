#pragma once
#include "vec.hpp"
#include <cfloat>

inline void vmin(Vec2& a, const Vec2& b)
{
	a.set(
		fmin(a.x, b.x),
		fmin(a.y, b.y));
}

inline void vmax(Vec2& a, const Vec2& b)
{
	a.set(
		fmax(a.x, b.x),
		fmax(a.y, b.y));
}


inline void vmin(Vec3& a, const Vec3& b)
{
	a.set(
		fmin(a.x, b.x),
		fmin(a.y, b.y),
		fmin(a.z, b.z));
}

inline void vmax(Vec3& a, const Vec3& b)
{
	a.set(
		fmax(a.x, b.x),
		fmax(a.y, b.y),
		fmax(a.z, b.z));
}


class AABB2
{
public:
	Vec2 _min;
	Vec2 _max;

public:
	AABB2()
	{
		init();
	}
	void init() {
		_max = Vec2(-FLT_MAX, -FLT_MAX);
		_min = Vec2(FLT_MAX, FLT_MAX);
	}

	AABB2(const Vec2& v) {
		_min = _max = v;
	}

	AABB2(const Vec2& a, const Vec2& b) {
		_min = a;
		_max = a;
		vmin(_min, b);
		vmax(_max, b);
	}
	
	AABB2& operator += (const Vec2& p)
	{
		vmin(_min, p);
		vmax(_max, p);
		return *this;
	}

	AABB2& operator += (const AABB2& b)
	{
		vmin(_min, b._min);
		vmax(_max, b._max);
		return *this;
	}
	void set(const Vec2& min, const Vec2& max) {
		_min = min;
		_max = max;
	}
	void clamp(const Vec2& min, const Vec2& max)
	{
		if (_min.x < min.x)
			_min.x = min.x;
		if (_min.y < min.y)
			_min.y = min.y;
		if (_max.x > max.x)
			_max.x = max.x;
		if (_max.y > max.y)
			_max.y = max.y;
	}
};

class AABB3
{
public:
	Vec3 _min;
	Vec3 _max;

public:
	AABB3()
	{
		init();
	}
	void init() {
		_max = Vec3(-FLT_MAX, -FLT_MAX,-FLT_MAX);
		_min = Vec3(FLT_MAX, FLT_MAX, FLT_MAX);
	}

	AABB3(const Vec3& v) {
		_min = _max = v;
	}

	AABB3(const Vec3& a, const Vec3& b) {
		_min = a;
		_max = a;
		vmin(_min, b);
		vmax(_max, b);
	}

	AABB3& operator += (const Vec3& p)
	{
		vmin(_min, p);
		vmax(_max, p);
		return *this;
	}

	AABB3& operator += (const AABB3& b)
	{
		vmin(_min, b._min);
		vmax(_max, b._max);
		return *this;
	}
	void set(const Vec3& min, const Vec3& max) {
		_min = min;
		_max = max;
	}
	void set(const Vec3& v) {
		_min = v;
		_max = v;
	}
	void setDoubleZ(const float& minz, const float& maxz) {
		_min.z = minz;
		_max.z = maxz;
	}
	void clamp(const Vec3& min, const Vec3& max)
	{
		if (_min.x < min.x)
			_min.x = min.x;
		if (_min.y < min.y)
			_min.y = min.y;
		if (_min.z < min.z)
			_min.z = min.z;
		if (_max.x > max.x)
			_max.x = max.x;
		if (_max.y > max.y)
			_max.y = max.y;
		if (_max.z > max.z)
			_max.z = max.z;
	}
	bool overlaps(const AABB3& b) const
	{
		if (_min[0] > b._max[0]) return false;
		if (_min[1] > b._max[1]) return false;
		if (_min[2] > b._max[2]) return false;

		if (_max[0] < b._min[0]) return false;
		if (_max[1] < b._min[1]) return false;
		if (_max[2] < b._min[2]) return false;

		return true;
	}
	bool contain(const AABB3& b) const
	{
		if (b._max.x < b._min.x || b._max.y < b._min.y || b._max.z < b._min.z)
			return false;
		if (_min.x <= b._min.x&& _min.y <= b._min.y && _min.z <= b._min.z && _max.x >= b._max.x&& _max.y >= b._max.y&& _max.z >= b._max.z)
			return true;
		return false;
	}
};
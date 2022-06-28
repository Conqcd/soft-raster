#pragma once
#include <cmath>
#define     GLH_EPSILON          float(10e-6)
#define		GLH_EPSILON_2		float(10e-12)

class Vec2
{
public:
	float x, y;
public:
	Vec2()
	{
		x = y = 0;
	}
	Vec2(float _x, float _y) :x(_x), y(_y)
	{

	}
	Vec2(float _v[2]) :x(_v[0]), y(_v[1])
	{

	}
	void set(float _x, float _y)
	{
		x = _x; y = _y;
	}
	void set(float _v[2])
	{
		x = _v[0]; y = _v[1];
	}

	Vec2 operator -(const Vec2& v) const
	{
		return Vec2(x -v.x, y -v.y);
	}

	Vec2 operator +(const Vec2& v) const
	{
		return Vec2(x + v.x, y + v.y);
	}
	
	Vec2 operator *(float t) const
	{
		return Vec2(x * t, y * t);
	}
	
	float getx() { return x; }
	float gety() { return y; }
	~Vec2()
	{

	}
};

class Vec3
{
public:
	float x, y, z;
public:
	Vec3()
	{
		x = y = z = 0;
	}
	Vec3(float _x, float _y, float _z) :x(_x), y(_y), z(_z)
	{
	}
	
	Vec3(float _v[3]) :x(_v[0]), y(_v[1]), z(_v[2])
	{
	}
	void set(float _x, float _y, float _z)
	{
		x = _x; y = _y; z = _z;
	}

	void set(float _v[3])
	{
		x = _v[0]; y = _v[1]; z = _v[2];
	}
	~Vec3()
	{

	}
	float getx() const
	{
		return x;
	}
	Vec2 getxy() const
	{
		return {x,y};
	}
	float gety() const
	{
		return y;
	}
	float getz() const
	{
		return z;
	}
	Vec3& operator += (const Vec3& v) {
		x += v.x;
		y += v.y;
		z += v.z;
		return *this;
	}

	Vec3& operator -= (const Vec3& v) {
		x -= v.x;
		y -= v.y;
		z -= v.z;
		return *this;
	}

	Vec3 operator - () const {
		return Vec3(-x, -y, -z);
	}
	
	Vec3 operator- (const Vec3& v) const {
		return Vec3(x - v.x,y -v.y,z - v.z);
	}
	Vec3 operator+ (const Vec3& v) const
	{
		return Vec3(x + v.x, y + v.y, z + v.z);
	}
	Vec3 pow(const Vec3& v) const &
	{
		return Vec3(powf(x,v.x), powf(y,v.y), powf(z,v.z));
	}
	Vec3 pow(const Vec3& v) const &&
	{
		return Vec3(powf(x,v.x), powf(y,v.y), powf(z,v.z));
	}
	Vec3 multi(const Vec3& v) const
	{
		return Vec3(x * v.x,y * v.y,z * v.z);
	}
	float dot(const Vec3& vec) const {
		return x * vec.x + y * vec.y + z * vec.z;
	}
	Vec3 cross(const Vec3& vec) const
	{
		return Vec3(y * vec.z - z * vec.y, z * vec.x - x * vec.z, x * vec.y - y * vec.x);
	}

	Vec3& operator *= (float t) {
		x *= t;
		y *= t;
		z *= t;
		return *this;
	}
	Vec3 operator *(float t) const
	{
		return Vec3(x * t, y * t, z * t);
	}

	Vec3 operator /(float t) const
	{
		return Vec3(x / t, y / t, z / t);
	}

	float operator[](int t) const
	{
		switch (t)
		{
		case 0:
			return x;
			break;
		case 1:
			return y;
			break;
		case 2:
			return z;
			break;
		default:
			break;
		}
	}
	
	float length() const {
		return float(sqrt(x * x + y * y + z * z));
	}

	void normalize()
	{
		float sum = x * x + y * y + z * z;
		if (sum > GLH_EPSILON_2) {
			float base = float(1.0 / sqrt(sum));
			x *= base;
			y *= base;
			z *= base;
		}
	}
};

inline Vec3 operator * (float t, const Vec3& v) {
	return v * t;
}

inline float operator * (const Vec3& v1, const Vec3& v2) {
	return v1.dot(v2);
}

inline Vec3 normalize(const Vec3& vec)
{
	Vec3 nvec = vec;
	nvec.normalize();
	return nvec;
}

inline Vec3 cross(const Vec3& vec1, const Vec3& Vec2)
{
	return vec1.cross(Vec2);
}

inline float dot(const Vec3& vec1, const Vec3& Vec2)
{
	return vec1.dot(Vec2);
}

inline Vec3 barycentric(const Vec2& v1, const Vec2& v2, const Vec2& v3,const Vec2& point)
{
	Vec3 vec= cross(Vec3(v3.x - v1.x, v2.x - v1.x, v1.x - point.x), Vec3(v3.y - v1.y, v2.y - v1.y, v1.y - point.y));
	if (std::abs(vec.z) < 1) return Vec3(-1, 1, 1);
	return Vec3(1.f - (vec.x + vec.y) / vec.z, vec.y / vec.z, vec.x / vec.z);
}

inline void barycentric(const Vec3& v1, const Vec3& v2, const Vec3& v3, const Vec2& point,Vec3& t1, Vec3& t2,Vec3& b)
{
	t1.set(v3.x - v1.x, v2.x - v1.x, v1.x - point.x);
	t2.set(v3.y - v1.y, v2.y - v1.y, v1.y - point.y);
	b.set(t1.y * t2.z - t1.z * t2.y, t1.z * t2.x - t1.x * t2.z, t1.x * t2.y - t1.y * t2.x);
	if (fabs(b.z) < GLH_EPSILON) b.set(-1, 1, 1);
	else b.set(1.f - (b.x + b.y) / b.z, b.y / b.z, b.x / b.z);
}
#pragma once

#include "image.hpp"
#include "box.hpp"
#include "Zbuffer.hpp"
#include "Texture.hpp"
#include <memory>

class Model;

class Shader
{
private:
	SDLImage screen;
	std::unique_ptr<ZBuffer> ZB;
	int m_width, m_height;
public:
	Shader(int _width = 800, int _height = 600, int bpp = 3);
	bool DrawTriangle(const Vec3& v0, const Vec3& v1, const Vec3& v2,
	const Vec3& p0, const Vec3& p1, const Vec3& p2,
	const Vec3& n0, const Vec3& n1, const Vec3& n2,
	const Vec2& t0, const Vec2& t1, const Vec2& t2,
	Color color,const Vec3& lightPos,const Vec3& lightIntensity,const Vec3& CameraPos,const Texture& texture);
	bool ProcessEvents(float deltatime,Camera& camera);
	void Show();
	~Shader();
private:
	void init();
	void BlinnPhong(Color& color,const Vec3& normal,const Vec3& position,const Vec3& lightPos,const Vec3& lightIntensity,const Vec3& CameraPos,Vec3 TexColor);
	friend Model;
};
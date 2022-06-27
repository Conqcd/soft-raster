#pragma once

#include "image.hpp"
#include "box.hpp"
#include "Zbuffer.hpp"
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
	bool DrawTriangle(const Vec3& t0, const Vec3& t1, const Vec3& t2,const AABB3& box, Color color, bool changed);
	bool ProcessEvents(float deltatime,Camera& camera);
	void Show();
	~Shader();
private:
	void init();
	friend Model;
};
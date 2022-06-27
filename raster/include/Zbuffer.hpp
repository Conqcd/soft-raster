#pragma once
#include "box.hpp"
#include <vector>

class ZBuffer
{
public:
	int m_width, m_height;
	// float** zbuffer;
	std::vector<float> buffer;
	// int* x_m, * y_m;
public:

	ZBuffer(int w = 800, int h = 600);
	void reset();

	bool Update(int x,int y,float value);

	~ZBuffer() = default;
};

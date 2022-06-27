#include "Zbuffer.hpp"

ZBuffer::ZBuffer(int w, int h)
 :m_width(w), m_height(h)
{
	buffer.resize(w * h);
}


void ZBuffer::reset()
{
	std::memset(buffer.data(),0,sizeof(float) * buffer.size());
}

bool ZBuffer::Update(int x,int y,float value)
{
	auto& v = buffer[y * m_width + x]; 
	if(v < value)
	{
		v = value;
		return true;
	}
	return false;
}
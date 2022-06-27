#include "Zbuffer.hpp"

ZBuffer::ZBuffer(int w, int h)
 :m_width(w), m_height(h)
{
	buffer.resize(m_width * m_height);
}


void ZBuffer::reset()
{
	std::memset(buffer.data(),0,sizeof(float) * buffer.size());
}

bool ZBuffer::Update(int x,int y,float value){
	if(x < 0 || x >= m_width || y < 0 || y >= m_height)
		return false;
	value = (value + 1) / 2;
	auto& v = buffer[y * m_width + x]; 
	if(v < value)
	{
		v = value;
		return true;
	}
	return false;
}
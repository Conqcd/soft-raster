#include "Texture.hpp"
#define STB_IMAGE_IMPLEMENTATION
#include <stb_image.h>

Texture::Texture(int width,int height)
    :m_width(width),m_height(height)
{
    m_Texs.resize(width * height);
}

Texture::Texture(const std::string& path)
    :m_path(path)
{
    int width,height,channels;
    stbi_set_flip_vertically_on_load(1);
    stbi_uc *data = nullptr;
    {
        data = stbi_load(path.c_str(),&width,&height,&channels,0);
    }
    m_width = static_cast<uint32_t>(width);
    m_height = static_cast<uint32_t>(height);

    int id = 0;
    m_Texs.resize(m_width * m_height);
    for (int i = 0; i < m_height; i++)
    {
        for (int j = 0; j < m_width; j++)
        {
            m_Texs[id].x = data[id * 3] / 255;
            m_Texs[id].y = data[id * 3 + 1] / 255;
            m_Texs[id].z = data[id * 3 + 2] / 255;
            id++;
        }
    }
    stbi_image_free(data);
}

void Texture::SetData(Vec3 color)
{
    m_Texs.assign(m_height * m_width,color);
}

Vec3 Texture::GetColor(Vec2 tc)const
{
	if (tc.x < 0.0 || tc.x > 1.0 || tc.y < 0 || tc.y > 1.0)
		return Vec3(0,0,0);
    return m_Texs[tc.x * m_width + tc.y * m_width * m_height];
}
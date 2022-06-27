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
    for (int i = 0; i < m_height; i++)
    {
        for (int j = 0; j < m_width; j++)
        {
            m_Texs[id] = (data[id * 3] << 24) | (data[id * 3 + 1] << 16) | (data[id * 3 + 2] << 8); 
            id++;
        }
    }
    stbi_image_free(data);
}

void Texture::SetData(uint32_t color)
{
    m_Texs.assign(m_height * m_width,color);
}
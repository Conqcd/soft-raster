#pragma once
#include <string>
#include <vector>

class Texture
{
private:
    std::string m_path;
    std::vector<uint8_t> m_Texs;
    int m_width,m_height,bpp;
public:
    Texture() = default;
    Texture(int,int);
    Texture(const std::string& path);
    void SetData(uint32_t color);
};
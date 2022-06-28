#pragma once
#include <string>
#include <vector>
#include "vec.hpp"

class Texture
{
private:
    std::string m_path;
    std::vector<Vec3> m_Texs;
    int m_width,m_height,bpp;
public:
    Texture() = default;
    Texture(int w,int h);
    Texture(const std::string& path);
    void SetData(Vec3 color);
    Vec3 GetColor(Vec2 tc)const;
};
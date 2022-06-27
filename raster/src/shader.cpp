#include "shader.hpp"

Shader::Shader(int _width, int _height,int bpp)
    : m_width(_width),m_height(m_height)
{
    init();
}

void Shader::init()
{
    ZB = std::make_unique<ZBuffer>(m_width, m_height);
    screen.init(m_width, m_height);
}

bool Shader::DrawTriangle(const Vec3& v1, const Vec3& v2, const Vec3& v3, const AABB3& box, Color color,bool changed)
{
    if (box._min.z > box._max.z || box._max.z >= 1.0 || box._min.z <= -1.0)
        return false;
    int x = box._min.x, y = box._min.y, max_x = box._max.x, max_y = box._max.y;
    float z;
    Vec3 temp1, temp2, bc_screen;
    Vec2 point;
    bool change = false;
    for (; y <= max_y; y++)
    {
        //#pragma omp parallel for
        for (; x <= max_x; x++) {
            point.set(x, y);
            barycentric(v1, v2, v3, point, temp1, temp2, bc_screen);
            if (bc_screen.x < 0 || bc_screen.y < 0 || bc_screen.z < 0) continue;
            z = bc_screen.x * v1.z + bc_screen.y * v2.z + bc_screen.z * v3.z;
            if (ZB->Update(z, x, y))
            {
                screen.set(x, y, color.raw[0], color.raw[1], color.raw[2]);
                change = true;
            }
        }
    }
    return change;
}

bool Shader::ProcessEvents(float deltatime,Camera& camera)
{
    return screen.processEvents(deltatime,camera);
}

Shader::~Shader()
{
}

void Shader::Show()
{
    screen.update();
    screen.clear();
    ZB->reset();
}

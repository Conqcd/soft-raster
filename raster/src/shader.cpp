#include "shader.hpp"

Shader::Shader(int _width, int _height,int bpp)
    : m_width(_width),m_height(_height)
{
    init();
}

void Shader::init()
{
    ZB = std::make_unique<ZBuffer>(m_width, m_height);
    screen.init(m_width, m_height);
}

bool Shader::DrawTriangle(const Vec3& v0, const Vec3& v1, const Vec3& v2,
                const Vec3& p0, const Vec3& p1, const Vec3& p2,
                const Vec3& n0, const Vec3& n1, const Vec3& n2,
                const Vec2& t0, const Vec2& t1, const Vec2& t2,
                Color color,const Vec3& lightPos,const Vec3& lightIntensity,const Vec3& CameraPos,const Texture& texture)
{
    AABB3 box(v0);
    box += v1;
    box += v2;
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
        for (x = box._min.x; x <= max_x; x++) {
            point.set(x, y);
            barycentric(v0, v1, v2, point, temp1, temp2, bc_screen);
            if (bc_screen.x < 0 || bc_screen.y < 0 || bc_screen.z < 0) continue;
            z = bc_screen.x * v0.z + bc_screen.y * v1.z + bc_screen.z * v2.z;

            if (ZB->Update(x, y, z))
            {
                Vec3 normal,position;
                Vec2 texCoords;

                normal.x = bc_screen.x * n0.x + bc_screen.y * n1.x + bc_screen.z * n2.x;
                normal.y = bc_screen.x * n0.y + bc_screen.y * n1.y + bc_screen.z * n2.y;
                normal.z = bc_screen.x * n0.z + bc_screen.y * n1.z + bc_screen.z * n2.z;

                position.x = bc_screen.x * p0.x + bc_screen.y * p1.x + bc_screen.z * p2.x;
                position.y = bc_screen.x * p0.y + bc_screen.y * p1.y + bc_screen.z * p2.y;
                position.z = bc_screen.x * p0.z + bc_screen.y * p1.z + bc_screen.z * p2.z;

                texCoords.x = bc_screen.x * t0.x + bc_screen.y * t1.x + bc_screen.z * t2.x;
                texCoords.y = bc_screen.x * t0.y + bc_screen.y * t1.y + bc_screen.z * t2.y;

                Vec3 TexCol = texture.GetColor(texCoords);

                color.r = static_cast<uint8_t>(normal.x * 255);
                color.g = static_cast<uint8_t>(normal.y * 255);
                color.b = static_cast<uint8_t>(normal.z * 255);
                BlinnPhong(color,normal,position,lightPos,lightIntensity,CameraPos,TexCol);
                screen.set(x, y, color.raw[0], color.raw[1], color.raw[2]);
                change = true;
            }
        }
    }
    return change;
}

void Shader::BlinnPhong(Color& color,const Vec3& v_normal,const Vec3& position,const Vec3& lightPos,const Vec3& lightIntensity,const Vec3& cameraPos,Vec3 TexColor)
{
    TexColor = TexColor.pow(Vec3(2.2,2.2,2.2));

    Vec3 ambient = 0.05 * TexColor;

    Vec3 lightDir = normalize(lightPos);
    Vec3 normal = normalize(v_normal);
    float diff = std::max(dot(lightDir, normal), 0.0f);
    Vec3 light_atten_coff = lightIntensity / powf((lightPos - position).length(),2.0);
    Vec3 diffuse = light_atten_coff.multi(TexColor) * diff;

    Vec3 viewDir = normalize(cameraPos - position);
    Vec3 halfDir = normalize(lightDir + viewDir);
    // float spec = pow(max(dot(halfDir, normal), 0.0), u_Ns);
    // float spec = pow(max(dot(halfDir, normal), 0.0), u_Ns);
    // vec3 specular = u_Ks * light_atten_coff * spec;

    // vec3 radiance = (ambient + diffuse + specular);
    Vec3 radiance = TexColor;
    // Vec3 radiance = diffuse;
    
    Vec3 phongColor = radiance.pow(Vec3(1.0 / 2.2,1.0 / 2.2,1.0 / 2.2));
    color.r = static_cast<uint8_t>(phongColor.x * 255);
    color.g = static_cast<uint8_t>(phongColor.y * 255);
    color.b = static_cast<uint8_t>(phongColor.z * 255);
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

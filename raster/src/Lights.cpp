#include "Lights.hpp"

Lights::Lights()
{
    // LightPos = glm::vec3(0,80,80);
    // LightIntensity = glm::vec3(5000,5000,5000);
    LightPos = Vec3(15,10,10);
    LightIntensity = Vec3(50,50,50);
    LookAtPoint = Vec3(0.0,0.0,0.0);
    Direction = LookAtPoint - LightPos;
    WorldUp = Vec3(0.0,1.0,0.0);
    Bound = Vec3(600.f,600.f,600.f);
}
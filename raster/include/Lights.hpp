#pragma once
#include "vec.hpp"

class Lights
{
public:
    Vec3 LightPos,LightIntensity,LookAtPoint,WorldUp,Bound,Direction;
public:
    Lights(/* args */);
    ~Lights() = default;

};

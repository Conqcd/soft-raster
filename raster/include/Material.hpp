#pragma once
#include "vec.hpp"

struct Material
{
    Vec3 Ks,Kd,Ka,Le;
    float Ns,Ni;
};
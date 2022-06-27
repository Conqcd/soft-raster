#pragma once

#include "triangle.hpp"
#include "shader.hpp"
#include "box.hpp"
#include "Texture.hpp"
#include <vector>
#include <string>


struct Mesh
{
	std::vector<Vec3> m_Vertex;
	std::vector<Vec3> m_Normal;
	std::vector<Vec2> m_TexCoords;
	std::vector<int> m_Indices;
	std::vector<Texture> m_Textures;
	unsigned int numvtx, numtri, numind;
public:
	Mesh() = default;
	Mesh(const std::string& path,const std::string& material_path);
	Mesh(unsigned int _numvtx, unsigned int _numtri, unsigned int _numind,
		Triangle* _face,
		Vec3* _vertex,
		Vec3* _normal,
		Vec2* _texcord);
	~Mesh();
};
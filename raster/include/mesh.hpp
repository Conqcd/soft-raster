#pragma once

#include "triangle.hpp"
#include "shader.hpp"
#include "box.hpp"
#include "Texture.hpp"
#include <vector>


struct Mesh
{
	std::vector<float> m_Vertex;
	std::vector<float> m_Normal;
	std::vector<float> m_TexCoords;
	std::vector<int> m_Indices;
	std::vector<Texture> m_Textures;
	unsigned int numvtx, numtri, numind;
	// Vec3* normal;
	// Vec2* texcord;
public:
	// Triangle* face;
	// Vec3* vertex;
	Mesh() = default;
	Mesh(const std::string* path);
	Mesh(unsigned int _numvtx, unsigned int _numtri, unsigned int _numind,
		Triangle* _face,
		Vec3* _vertex,
		Vec3* _normal,
		Vec2* _texcord);
	~Mesh();
	void draw(Shader* shader);
};
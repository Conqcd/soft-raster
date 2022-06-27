#pragma once

#include <memory>
#include <string>
#include <vector>
#include <fstream>
#include "shader.hpp"
#include "mesh.hpp"

class Model
{
public:
	std::vector<std::shared_ptr<Mesh>> meshes;
	std::string directory;

	std::vector<float> m_Vertex;
	std::vector<float> m_Normal;
	std::vector<float> m_TexCoords;
	std::vector<int> m_Indices;

public:

	Model(const std::string& path);
	void Draw(Shader* shader, bool& changed);
	void transfer(unsigned int index, const mat4& viewport, const mat4& projection, const mat4& view, const mat4& model);
	void addModel(std::string path);
	void SetBox(int width, int height);
	void SetFace();
private:
	void loadModel(std::string path, std::shared_ptr<Mesh>& object);
};
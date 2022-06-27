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
	Model() = default;
	void Draw(Shader* shader);
	void VertexShader(unsigned int index, const mat4& viewport, const mat4& projection, const mat4& view, const mat4& model);
	void addModel(const std::string& path,const std::string& material_path);
	void SetBox(int width, int height);
	void SetFace();
private:
	std::vector<std::shared_ptr<Mesh>> meshes;
	std::string directory;
	std::vector<Vec3> m_Vertex;
	std::vector<Vec3> m_Normal;
	std::vector<Vec2> m_TexCoords;
	std::vector<int> m_Indices;
	void loadModel(const std::string& path, std::shared_ptr<Mesh>& object);
};
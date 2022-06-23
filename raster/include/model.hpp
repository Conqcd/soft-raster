#pragma once

#include"shader.hpp"
#include <memory>
#include <string>
#include<vector>
#include <fstream>
#include"mesh.hpp"
#include "octree.hpp"
using namespace std;

class Model
{
public:
	vector<shared_ptr<Mesh>> meshes;
	string directory;
	bool first;
	OCTree oct;
	vector<int> biasv,biasf;
	vector<Triangle> face;
	vector<Vec3> nowvertex;
	vector<float> newz;
	unsigned int numvtx, numtri;
	vector<bool> culledface, culledface2;
	vector<AABB3> boxes;
	vector<OCTnode*>nodes;
	bool useTree,deleteTree,Updateculled;
	float ac, _b;
public:

	void SetABC(float zFar, float zNear);
	Model(const char* path);
	void Draw(Shader* shader, bool& changed);
	void DrawTree(Shader* shader);
	void transfer(unsigned int index, const mat4& viewport, const mat4& projection, const mat4& view, const mat4& model);
	void transfer2(unsigned int index, const mat4& viewport, const mat4& projection, const mat4& view, const mat4& model,float near,float far);
	void addModel(string path);
	void InitOct(int H,int W);
	void SetBox(int width, int height);
	void SetFace();
	void Switch();
private:
	void loadModel(string path, shared_ptr<Mesh>& object);
	bool drawNode(OCTnode* root,Shader* shader, bool changed);
	bool drawNode2(OCTnode* root, Shader* shader, bool changed);
};
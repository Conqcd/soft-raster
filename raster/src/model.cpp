#include "model.hpp"


void Model::Draw(Shader* shader,const Lights& light)
{
	int count = 0;
	for (int i = 0; i < m_Indices.size(); i += 3) {
		shader->DrawTriangle(m_Vertex[m_Indices[i]], m_Vertex[m_Indices[i + 1]], m_Vertex[m_Indices[i + 2]],
		m_Normal[m_Indices[i]], m_Normal[m_Indices[i + 1]], m_Normal[m_Indices[i + 2]],
		m_TexCoords[m_Indices[i]], m_TexCoords[m_Indices[i + 1]],
		Color(255,255,255));
	}
}

void Model::VertexShader(unsigned index, const mat4& viewport, const mat4& projection, const mat4& view, const mat4& model)
{
	if(index >= meshes.size())
		return;

	mat4 trans = viewport * projection * view * model;
	m_Vertex.resize(meshes[index].m_Vertex.size());
	// m_Normal.resize(meshes[index].m_Vertex.size());
	// m_TexCoords.resize(meshes[index].m_Vertex.size());
	for (int i = 0,j = 0;i < meshes[index].m_Vertex.size();i++)
	{
		trans.dotV3(meshes[index].m_Vertex[j++], m_Vertex[i]);
	}
	m_Normal.assign(meshes[index].m_Normal.begin(),meshes[index].m_Normal.end());
	m_TexCoords.assign(meshes[index].m_TexCoords.begin(),meshes[index].m_TexCoords.end());
	m_Indices.assign(meshes[index].m_Indices.begin(),meshes[index].m_Indices.end());
}


void Model::addModel(const std::string& path,const std::string& material_path)
{
	meshes.emplace_back(path,material_path);
}


void Model::SetBox(int width,int height)
{
	// float minz,maxz;
	// for (int i = 0; i < numtri; i++) {
	// 	if(nowvertex[face[i].vid[0]].z> nowvertex[face[i].vid[1]].z)
	// 	{
	// 		minz = nowvertex[face[i].vid[1]].z;
	// 		maxz = nowvertex[face[i].vid[0]].z;
	// 	}else
	// 	{
	// 		minz = nowvertex[face[i].vid[0]].z;
	// 		maxz = nowvertex[face[i].vid[1]].z;
	// 	}
	// 	if(maxz< nowvertex[face[i].vid[2]].z)
	// 	{
	// 		maxz = nowvertex[face[i].vid[2]].z;
	// 	}else if(minz> nowvertex[face[i].vid[2]].z)
	// 	{
	// 		minz = nowvertex[face[i].vid[2]].z;
	// 	}
	// 	boxes[i].set(nowvertex[face[i].vid[0]]);
	// 	boxes[i] += nowvertex[face[i].vid[1]];
	// 	boxes[i] += nowvertex[face[i].vid[2]];
	// 	boxes[i].clamp(Vec3(0, 0, -1.0f), Vec3(width - 1, height - 1, 1.0f));
	// }
}

void Model::SetFace()
{
	int bias2 = 0;
	for (int j = 0;j < meshes.size();j++)
	{
		for (int i = 0; i < meshes[j].numtri; i++)
		{
			// face[i+bias2].setv(meshes[j]->face[i].vid[0] + biasv[j], meshes[j]->face[i].vid[1] + biasv[j], meshes[j]->face[i].vid[2] + biasv[j]);
		}
		// bias2 += meshes[j]->numtri;
	}
}

void Model::loadModel(const std::string& filename, std::shared_ptr<Mesh>& object)
{
	// int i = 0;
	// fstream file;
	// file.open(filename);
	// if (!file.is_open())
	// {
	// 	printf("Can not read file:%s\n", filename);
	// 	return;
	// }
	// string line;
	// unsigned int numbVtx, numTri, numTex, numNor, numbVtx2, numTri2, numTex2, numNor2, numbInd;
	// numbVtx = numTri = numTex = numNor = numbVtx2 = numTri2 = numTex2 = numNor2 = numbInd = 0;
	// while (getline(file, line))
	// {
	// 	if (line[0] == 'v')
	// 	{
	// 		if (line[1] == ' ')
	// 		{
	// 			numbVtx++;
	// 		}
	// 		else if (line[1] == 't')
	// 		{
	// 			numTex++;
	// 		}
	// 		else if (line[1] == 'n')
	// 		{
	// 			numNor++;
	// 		}
	// 	}
	// 	else if (line[0] == 'f')
	// 	{
	// 		numTri++;
	// 	}
	// }
	// file.close();
	// file.open(filename);
	// Triangle* nface = new Triangle[numTri];
	// Vec3* nvertex = new Vec3[numbVtx];
	// Vec3* nnormal = new Vec3[numNor];
	// Vec2* ntexcord = new Vec2[numTex];
	// unsigned int* indices = new unsigned int[numTri * 3];
	// while (getline(file, line))
	// {
	// 	if (line[0] == 'v')
	// 	{
	// 		const char* st = line.c_str();
	// 		if (line[1] == ' ')
	// 		{
	// 			double x, y, z;
	// 			sscanf(st + 2, "%lf%lf%lf", &x, &y, &z);
	// 			nvertex[numbVtx2++].set(x, y, z);
	// 		}
	// 		else if (line[1] == 't')
	// 		{
	// 			double x, y;
	// 			sscanf(st + 2, "%lf%lf", &x, &y);
	// 			ntexcord[numTex2++].set(x, y);
	// 		}
	// 		else if (line[1] == 'n')
	// 		{
	// 			double x, y, z;
	// 			sscanf(st + 2, "%lf%lf%lf", &x, &y, &z);
	// 			nnormal[numNor2++].set(x, y, z);
	// 		}
	// 	}
	// 	else if (line[0] == 'f' && line[1] == ' ')
	// 	{
	// 		const char* st = line.c_str();
	// 		int id1, id2, id3, id4, id5, id6, id7, id8, id9;
	// 		const char* nxt;
	// 		sscanf(st  + 2, "%d", &id1);
	// 		nxt = strchr(st + 2, ' ');

	// 		sscanf(nxt + 1, "%d", &id4);
	// 		nxt = strchr(nxt + 1, ' ');
	// 		sscanf(nxt + 1, "%d", &id7);

	// 		id1 = id1 < 0 ? (int)numbVtx + id1 : id1-1;
	// 		id4 = id4 < 0 ? (int)numbVtx + id4 : id4-1;
	// 		id7 = id7 < 0 ? (int)numbVtx + id7 : id7-1;
	// 		//sscanf(st + 2, "%u/%u/%u %u/%u/%u %u/%u/%u", &id1, &id2, &id3, &id4, &id5, &id6, &id7, &id8, &id9);
	// 		//indices[numbInd++] = id1 - 1;
	// 		//indices[numbInd++] = id4 - 1;
	// 		//indices[numbInd++] = id7 - 1;
	// 		nface[numTri2++].setv(id1 , id4 , id7 );
	// 		//nface[numTri2].sett(id2 - 1, id5 - 1, id8 - 1);
	// 		//nface[numTri2++].setn(id3 - 1, id6 - 1, id9 - 1);
	// 	}
	// }
	// object = make_shared<Mesh>(numbVtx2, numTri2, numbInd, nface, nvertex, nnormal, ntexcord);
}

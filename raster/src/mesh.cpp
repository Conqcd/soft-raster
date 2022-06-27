#include "mesh.hpp"
#include <unordered_map>
#include "tiny_obj_loader.hpp"

Mesh::Mesh(unsigned int _numvtx, unsigned int _numtri, unsigned int _numind,
	Triangle* _face,
	Vec3* _vertex,
	Vec3* _normal,
	Vec2* _texcord)
{
	numvtx = _numvtx;
	numind = _numind;
	numtri = _numtri;
	// face = _face;
	// vertex = _vertex;
	// normal = _normal;
	// texcord = _texcord;
}

Mesh::Mesh(const std::string& path,const std::string& material_path)
{
	std::unordered_map<std::string,int> MatNameId;
    std::string* warn = new std::string(),*err = new std::string();
    auto attrib = new tinyobj::attrib_t();
    auto shapes = new std::vector<tinyobj::shape_t>();
    auto material = new std::vector<tinyobj::material_t>();

    tinyobj::LoadObj(attrib, shapes, material, warn, err, path.c_str(), material_path.c_str());
 
    for (int i = 0; i < material->size(); i++)
    {
        MatNameId[(*material)[i].name] = i;
        // Material materiall;
        // materiall.Ka.r = (*material)[i].ambient[0];
        // materiall.Ka.g = (*material)[i].ambient[1];
        // materiall.Ka.b = (*material)[i].ambient[2];
        // materiall.Ks.r = (*material)[i].specular[0];
        // materiall.Ks.g = (*material)[i].specular[1];
        // materiall.Ks.b = (*material)[i].specular[2];
        // materiall.Kd.r = (*material)[i].diffuse[0];
        // materiall.Kd.g = (*material)[i].diffuse[1];
        // materiall.Kd.b = (*material)[i].diffuse[2];
        // materiall.Ns = (*material)[i].shininess;
        // materiall.Ni = (*material)[i].ior;
        // materiall.Le = glm::vec4(0);
        
        // m_Materials.emplace_back(std::move(materiall));
    }
 
    m_Vertex.resize(attrib->vertices.size());
    m_Normal.resize(attrib->normals.size());
    m_TexCoords.resize(attrib->texcoords.size());
    // m_MaterialId.resize(attrib->vertices.size() / 3);
    for (size_t i = 0; i < shapes->size(); i++)
    {
        for (size_t j = 0; j < (*shapes)[i].mesh.indices.size(); j ++) {
            int idv = (*shapes)[i].mesh.indices[j].vertex_index,idn = (*shapes)[i].mesh.indices[j].normal_index;
            m_Normal[idv].x = attrib->normals[idn * 3];
            m_Normal[idv].y = attrib->normals[idn * 3 + 1];
            m_Normal[idv].z = attrib->normals[idn * 3 + 2];
            m_Normal[idv].normalize();
            // m_MaterialId[idv] = (*shapes)[i].mesh.material_ids[j / 3];
            
        }
        // int maId = MatNameId[(*shapes)[i].name];
        int maId = (*shapes)[i].mesh.material_ids[0];
        // Material materiall;
        // materiall.Ka.r = (*material)[maId].ambient[0];
        // materiall.Ka.g = (*material)[maId].ambient[1];
        // materiall.Ka.b = (*material)[maId].ambient[2];
        // materiall.Ks.r = (*material)[maId].specular[0];
        // materiall.Ks.g = (*material)[maId].specular[1];
        // materiall.Ks.b = (*material)[maId].specular[2];
        // materiall.Kd.r = (*material)[maId].diffuse[0];
        // materiall.Kd.g = (*material)[maId].diffuse[1];
        // materiall.Kd.b = (*material)[maId].diffuse[2];
        // materiall.Ns = (*material)[maId].shininess;
        // materiall.Ni = (*material)[maId].ior;
        // m_Materials.emplace_back(std::move(materiall));
        // for (; maId < material->size(); maId++)
        // {
        //     if(strcmp((*material)[maId].name.c_str(),(*shapes)[i].name.c_str()) == 0)
        //         break;
        // }

        if(maId < material->size() && (*material)[maId].diffuse_texname != "")
            m_Textures.emplace_back(material_path + "/" + (*material)[maId].diffuse_texname);
        else
        {
            m_Textures.emplace_back(1,1);
            uint32_t whiteColor = 0xffffffff;
            m_Textures.back().SetData(whiteColor);
        }
    }

    int size = attrib->vertices.size() / 3;
    for (size_t i = 0; i < size; i++)
    {
        m_Vertex[i].x = attrib->vertices[i * 3];
        m_Vertex[i].y = attrib->vertices[i * 3 + 1];
        m_Vertex[i].z = attrib->vertices[i * 3 + 2];

        m_TexCoords[i].x = attrib->texcoords[i * 2];
        m_TexCoords[i].y = attrib->texcoords[i * 2 + 1];
    }
    
    int Ioffset = 0;
    for (size_t i = 0; i < shapes->size(); i++)
    {
        uint32_t *indices;
        indices = new uint32_t[(*shapes)[i].mesh.indices.size()];
        for (size_t j = 0; j < (*shapes)[i].mesh.indices.size(); j++) {
            indices[j] = (*shapes)[i].mesh.indices[j].vertex_index;
            m_Indices.push_back(indices[j] + Ioffset);
        }
        Ioffset += (*shapes)[i].mesh.indices.size();
        delete[] indices;
    }
    delete warn;
    delete err;
    delete attrib;
    delete shapes;
    delete material;
}

Mesh::~Mesh()
{
}


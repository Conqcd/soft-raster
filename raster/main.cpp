#include "image.hpp"
#include "shader.hpp"
#include "model.hpp"
#include <ctime>
// #include <SDL.h>

const unsigned int Width = 800, Height = 600;
float zNear = -0.1, zFar = -100.0;
float deltaTime = 0.0f;

int main(int argc, char** argv)
{

    clock_t start, end;
    Shader shader(Width, Height, 3);
    const char* path0 = "obj/boggie/body.obj";
    const char* path1 = "obj/african_head/african_head.obj";
    const char* path2 = "obj/test2.obj";
    const char* path3 = "obj/test1.obj";
    const char* path4 = "obj/scene2.obj";
    const char* path5 = "obj/dragon.obj";
    const char* path6 = "obj/liver_color.obj";

	//加载模型
    Model modelA(path6);
    //modelA.addModel(path4);
    //modelA.addModel(path1);
	//modelA.addModel(path5);

    modelA.SetFace();
    modelA.InitOct(Height, Width);
    modelA.SetABC(zFar, zNear);
    shader.HZB->SetABC(zFar, zNear);
    float deep = -2.0;
    float shape = 1.f;
    bool quit = true;
    bool changed = true;
    modelA.useTree = false;
    shader.useHiZbuffer = false;

    mat4 viewportv = viewport(-(int)Width / 2,-(int)Height / 2,Width,Height);
    while (quit)
    {
        start = clock();
        mat4 projection = perspective(radians(shader.screen.camera.Zoom), (float)Width / (float)Height, zNear, zFar);
        mat4 view = shader.screen.camera.GetViewMatrix();
        mat4 model2(1.0f);
        model2 = translate(model2, Vec3(124.0, 94.0, 300));
        model2 = scale(model2, Vec3(1.0, 1.0, 1.0f));
        mat4 model(1.0f);
        model = translate(model, Vec3(2.0, 1.0, -2.0));
        model = scale(model, Vec3(shape, shape, shape));
        modelA.transfer(0, viewportv, projection, view, model2);
        modelA.transfer(1, viewportv, projection, view, model);
        modelA.transfer(2, viewportv, projection, view, model2);
        modelA.transfer(3, viewportv, projection, view, model);
        modelA.Draw(&shader,changed);

        shader.show();
        end = clock();
        deltaTime = double(end - start) / CLOCKS_PER_SEC;
        quit = shader.screen.processEvents(deltaTime,modelA.useTree,shader.useHiZbuffer, changed);
        printf("time = %lf s FPS = %lf\n", deltaTime, 1 / deltaTime);
    }
    return 0;
}
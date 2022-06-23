#include <iostream>
#include <fstream>
#include <string.h>
#include "image.hpp"
#include "camera.hpp"


SDLImage::SDLImage():window(NULL), renderer(NULL), texture(NULL), buffer(NULL)
{
	width = 0;
	height = 0;
}

SDLImage::SDLImage(int w, int h):width(w),height(h)
{
	init(width, height);

}

SDLImage::~SDLImage()
{
	delete[] buffer;
	SDL_DestroyRenderer(renderer);
	SDL_DestroyTexture(texture);
	SDL_DestroyWindow(window);
	SDL_Quit();
}

bool SDLImage::init(int w, int h)
{
	width = w;
	height = h;
	last_x = width / 2, last_y = height / 2;
	if (SDL_Init(SDL_INIT_EVERYTHING) < 0) {
		return false;
	}

	window = SDL_CreateWindow("CGHW1",200, 200, width,height, SDL_WINDOW_SHOWN);

	if (window == NULL) {
		SDL_Quit();
		return false;
	}
	//SDL_RENDERER_PRESENTVSYNC
	renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED);
	texture = SDL_CreateTexture(renderer, SDL_PIXELFORMAT_RGBA8888,
		SDL_TEXTUREACCESS_STREAMING, width, height);

	if (renderer == NULL) {
		SDL_DestroyWindow(window);
		SDL_Quit();
		return false;
	}

	if (texture == NULL) {
		SDL_DestroyRenderer(renderer);
		SDL_DestroyWindow(window);
		SDL_Quit();
		return false;
	}

	buffer = new Uint32[width * height];

	memset(buffer, 0, width * height * sizeof(Uint32));

	return true;
}

void SDLImage::clear()
{
	memset(buffer, 0, width * height * sizeof(Uint32));
}

bool SDLImage::processEvents(float deltaTime,bool& set1,bool& set2,bool& changed)
{
	SDL_Event event;
	while (SDL_PollEvent(&event) != 0) {
		switch (event.type)
		{
		case SDL_KEYDOWN:
		{
			switch (event.key.keysym.sym)
			{
			case SDLK_w:
				camera.ProcessKeyboard(FORWARD, deltaTime);
				changed = true;
				break;
			case SDLK_s:
				camera.ProcessKeyboard(BACKWARD, deltaTime);
				changed = true;
				break;
			case SDLK_a:
				camera.ProcessKeyboard(LEFT, deltaTime);
				changed = true;
				break;
			case SDLK_d:
				camera.ProcessKeyboard(RIGHT, deltaTime);
				changed = true;
				break;
			case SDLK_1:
				changed = true;
				set2 = false;
				set1 = false;
				break;
			case SDLK_2:
				changed = true;
				set1 = false;
				set2 = true;
				break;
			case SDLK_3:
				changed = true;
				set2 = true;
				set1 = true;
				break;
			case SDLK_ESCAPE:
				return false;
				break;
			}
		}
		break;
		case SDL_QUIT:
			return false;
			break;
		case SDL_MOUSEWHEEL:
		{
			float yoffset = event.wheel.y;
			camera.ProcessMouseScroll(yoffset);
			changed = true;
		}
		break;
		case SDL_MOUSEMOTION:
		{
			SDL_ShowCursor(false);
			float xpos, ypos;
			xpos = event.motion.x;
			ypos = event.motion.y;

			float diff_x = xpos - last_x;
			float diff_y = last_y - ypos;
			last_x = xpos;
			last_y = ypos;
			camera.ProcessMouseMovement(diff_x, diff_y);
			changed = true; 
		}
		default:
			break;
		}
	}
	return true;
}

void SDLImage::update()
{
	SDL_UpdateTexture(texture, NULL, buffer, width * sizeof(Uint32));
	SDL_RenderClear(renderer);
	SDL_RenderCopy(renderer, texture, NULL, NULL);
	SDL_RenderPresent(renderer);
}

bool SDLImage::set(int x, int y, Uint8 red, Uint8 green, Uint8 blue)
{
	if (!buffer|| x < 0 || x >= width || y < 0 || y >= height) {
		return false;
	}

	Uint32 color = 0;

	color += red;
	color <<= 8;
	color += green;
	color <<= 8;
	color += blue;
	color <<= 8;
	color += 0xFF;

	buffer[((height - 1 - y) * width) + x] = color;
	return true;
}
#pragma once

#include"vec.hpp"
#include"Matrix.hpp"
#include"common.hpp"
#include <vector>
#include<cmath>

const float YAW = -90.0f;
const float PITCH = 0.0f;
const float SPEED = 2.5f;
const float SENSITIVITY = 0.1f;
const float ZOOM = 45.0f;

enum Camera_Movement {
	FORWARD,
	BACKWARD,
	LEFT,
	RIGHT
};

class Camera
{
public:

	Vec3 Position;
	Vec3 Front;
	Vec3 Up;
	Vec3 Right;
	Vec3 WorldUp;

	float Yaw;
	float Pitch;

	float MovementSpeed;
	float MouseSensitivity;
	float Zoom;

	Camera(Vec3 position = Vec3(0.0f, 0.0f, 0.0f), Vec3 up = Vec3(0.0f, 1.0f, 0.0f), float yaw = YAW, float pitch = PITCH) :Front(Vec3(0.0f, 0.0f, -1.0f)), MovementSpeed(SPEED), MouseSensitivity(SENSITIVITY), Zoom(ZOOM)
	{
		Position = position;
		WorldUp = up;
		Yaw = yaw;
		Pitch = pitch;
		updateCameraVectors();
	}
	Camera(float posX, float posY, float posZ, float upX, float upY, float upZ, float yaw, float pitch) :Front(Vec3(0.0f, 0.0f, -1.0f)), MovementSpeed(SPEED), MouseSensitivity(SENSITIVITY), Zoom(ZOOM)
	{
		Position = Vec3(posX, posY, posZ);
		WorldUp = Vec3(upX, upY, upZ);
		Yaw = yaw;
		Pitch = pitch;
		updateCameraVectors();
	}

	mat4 GetViewMatrix()
	{
		mat4 Result(1.0f);
		
		Result[0][0] = Right.getx();
		Result[0][1] = Right.gety();
		Result[0][2] = Right.getz();
		Result[1][0] = Up.getx();
		Result[1][1] = Up.gety();
		Result[1][2] = Up.getz();
		Result[2][0] = -Front.getx();
		Result[2][1] = -Front.gety();
		Result[2][2] = -Front.getz();
		Result[0][3] = -dot(Right, Position);
		Result[1][3] = -dot(Up, Position);
		Result[2][3] = -dot(-Front, Position);
		
		return Result;
	}
	
	void ProcessKeyboard(Camera_Movement direction, float deltaTime)
	{
		float cameraSpeed = 2.5f * deltaTime;
		if (direction == FORWARD)
			Position += cameraSpeed * Front;
		if (direction == BACKWARD)
			Position -= cameraSpeed * Front;
		if (direction == LEFT)
			Position -= Right * cameraSpeed;
		if (direction == RIGHT)
			Position += Right * cameraSpeed;
	}

	void ProcessMouseMovement(float xoffset, float yoffset, bool constrainPitch = true)
	{

		xoffset *= MouseSensitivity;
		yoffset *= MouseSensitivity;

		Yaw += xoffset;
		Pitch += yoffset;

		if (constrainPitch)
		{
			if (Pitch >= 89.9f)
				Pitch = 89.9f;
			if (Pitch <= -89.9f)
				Pitch = -89.9f;
		}
		updateCameraVectors();
	}

	void ProcessMouseScroll(float yoffset)
	{
		Zoom -= yoffset;
		if (Zoom < 1.0f)
			Zoom = 1.0f;
		if (Zoom > 45.0f)
			Zoom = 45.0f;
	}
private:
	void updateCameraVectors()
	{
		Vec3 front;
		front.set(cos(radians(Yaw)) * cos(radians(Pitch)), sin(radians(Pitch)), sin(radians(Yaw)) * cos(radians(Pitch)));
		Front = normalize(front);
		Right = normalize(cross(Front, WorldUp));
		Up = normalize(cross(Right, Front));
	}
	
	Vec3 getGroundDirection()
	{
		return normalize(Vec3(Front.getx(), 0.0f, Front.getz()));
	}
};
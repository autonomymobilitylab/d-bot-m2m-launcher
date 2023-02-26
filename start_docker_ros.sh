#!/bin/bash

docker pull osrf/ros:noetic-desktop-full
docker run -rm -d -v "$(pwd)":/catkin_ws/src -p 8080:8080 osrf/ros:noetic-desktop-full

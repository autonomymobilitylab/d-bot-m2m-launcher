#!/bin/bash

docker run -v $(pwd):/catkin_ws/src -it -p8080:8080 osrf/ros:noetic-desktop-full

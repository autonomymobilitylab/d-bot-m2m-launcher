# DBot-m2m-launcher

M2M AGV student project ros launcher repo

## Development environment setup

### Ros1 noetic ubuntu

install Ubuntu 20.04\
<https://www.releases.ubuntu.com/20.04/>
and ros1 noetic\
<https://wiki.ros.org/noetic>

### ros1 noetic docker

Install docker  
<https://www.docker.com/>\
Start docker container with ubuntu 20.04 and ros1 noetic desktop edition.  

Using container\
Run following command in folder which contains packages project uses.\
docker run -v $(pwd):/catkin_ws/src -it -p8080:8080 osrf/ros:noetic-desktop-full  

Starting roscore\
roscore  

Opening new shells inside container\
docker exec -it mycontainer bash  


## Project ros packages

1. <https://github.com/autonomymobilitylab/d-bot-m2m-obstacle-detection>
2. <https://github.com/autonomymobilitylab/d-bot-m2m-communication>
3. <https://github.com/autonomymobilitylab/d-bot-m2m-navigation>
4. <https://github.com/autonomymobilitylab/d-bot-m2m-task-executor>
5. <https://github.com/autonomymobilitylab/d-bot-m2m-state-estimation>

## Installation
TODO

## Starting dbot ros
TODO

## ROS and custom Packages
Visualizations contain starting ros package architecture.

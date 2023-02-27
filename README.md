# d-bot-m2m-launcher

m2m agv student project ros launcher repo

## development environment setup

### ros1 noetic ubuntu

install Ubuntu 20.04
<https://www.releases.ubuntu.com/20.04/>
and ros1 noetic
<https://wiki.ros.org/noetic>

### ros1 noetic docker

install docker
<https://www.docker.com/>
start docker container with ubuntu 20.04 and ros1 noetic desktop edition.
Run following command in folder which contains packages project uses. 
docker run -v $(pwd):/catkin_ws/src -it -p8080:8080 osrf/ros:noetic-desktop-full

## project ros packages

1. <https://github.com/autonomymobilitylab/d-bot-m2m-obstacle-detection>
2. <https://github.com/autonomymobilitylab/d-bot-m2m-communication>
3. <https://github.com/autonomymobilitylab/d-bot-m2m-navigation>
4. <https://github.com/autonomymobilitylab/d-bot-m2m-task-executor>
5. <https://github.com/autonomymobilitylab/d-bot-m2m-state-estimation>

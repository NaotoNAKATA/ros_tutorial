#!/bin/bash

#
# Creating workspace
#

WORK=~/ros_tutorial

mkdir -p ${WORK}/catkin_ws/src
cd ${WORK}/catkin_ws
catkin_make

source ${WORK}/devel/setup.bash
echo $ROS_PACKAGE_PATH

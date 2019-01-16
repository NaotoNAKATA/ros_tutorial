#!/bin/bash

#
# ROSパッケージを作る
#

WORK=~/work/ros_tutorial
cd ${WORK}/catkin_ws/src

# std_msgs, roscpp, rospyに依存した新しいパッケージを'beginner_tutorials'を作成
catkin_create_pkg beginner_tutorials std_msgs rospy roscpp

# パッケージの依存
rospack depends1 beginner_tutorials 

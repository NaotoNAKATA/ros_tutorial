#!/bin/bash

#
# ROSパッケージを作る
#

WORK=~/work/ros_tutorial

# 環境の設定
source ${WORK}/catkin_ws/devel/setup.bash

# ディレクトリの移動 
roscd
cd ../src

# std_msgs, roscpp, rospyに依存した新しいパッケージを'beginner_tutorials'を作成
catkin_create_pkg beginner_tutorials std_msgs rospy roscpp


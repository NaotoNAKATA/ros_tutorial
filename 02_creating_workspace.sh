#!/bin/bash

#
# Creating workspace
#

WORK=~/work/ros_tutorial

# 環境の設定
source /opt/ros/melodic/setup.bash

# ワークスペースの作成
mkdir -p ${WORK}/catkin_ws/src
cd ${WORK}/catkin_ws/src
catkin_init_workspace

# ワークスペースをビルド
cd ${WORK}/catkin_ws
catkin_make

# 作成したワークスペースの環境を設定する
source ${WORK}/catkin_ws/devel/setup.bash
echo $ROS_PACKAGE_PATH

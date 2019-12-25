#!/bin/bash

#
# Creating workspace
#

WORK=`pwd`

# 作成したワークスペースの環境を設定する
source ${WORK}/catkin_ws/devel/setup.bash
echo $ROS_PACKAGE_PATH

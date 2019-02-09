#!/bin/bash

#
# シンプルな配信者(Publisher)と購読者(Subscriber)を書く(C++)
#

WORK=~/work/ros_tutorial

# 環境の設定
source ${WORK}/catkin_ws/devel/setup.bash

# ディレクトリの移動 
roscd beginner_tutorials/src

# ソースの取得
wget https://raw.github.com/ros/ros_tutorials/hydro-devel/roscpp_tutorials/talker/talker.cpp
wget https://raw.github.com/ros/ros_tutorials/hydro-devel/roscpp_tutorials/listener/listener.cpp


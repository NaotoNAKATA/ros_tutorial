#!/bin/bash

#
# サービス(srv)を使う
#
#http://wiki.ros.org/ja/ROS/Tutorials/CreatingMsgAndSrv

WORK=`pwd`

# 環境の設定
source ${WORK}/catkin_ws/devel/setup.bash

# ディレクトリの移動 
roscd beginner_tutorials

# ディレクトリがなければ作成する
if [ ! -e srv ] ; then
	mkdir srv
fi

#rospy_tutorialsパッケージからサービスをコピー
roscp rospy_tutorials AddTwoInts.srv srv/AddTwoInts.srv


#!/bin/bash

#
# シンプルなサービスとクライアントを書く(C++)
#

WORK=`pwd`

# 環境の設定
source ${WORK}/catkin_ws/devel/setup.bash

# 
if [ $1 -eq 0 ] ; then
	# roscoreを起動しておく
	roscore
elif [ $1 -eq 1 ] ; then
	# サービスの起動(C++)
	rosrun beginner_tutorials add_two_ints_server
elif [ $1 -eq 2 ] ; then
	# クライアント実行(C++)
	rosrun beginner_tutorials add_two_ints_client 1 3
elif [ $1 -eq 3 ] ; then
	# サービスの起動(python)
	rosrun beginner_tutorials add_two_ints_server.py
elif [ $1 -eq 4 ] ; then
	# クライアント実行(python)
	rosrun beginner_tutorials add_two_ints_client.py 1 3
fi



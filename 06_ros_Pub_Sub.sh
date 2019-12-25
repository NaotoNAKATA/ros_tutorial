#!/bin/bash

#
# シンプルな配信者(Publisher)と購読者(Subscriber)を書く(C++)
#

WORK=`pwd`

# 環境の設定
source ${WORK}/catkin_ws/devel/setup.bash

# 
if [ $1 -eq 0 ] ; then
	# roscoreを起動しておく
	roscore
elif [ $1 -eq 1 ] ; then
	# 配信者の起動(C++)
	rosrun beginner_tutorials talker
elif [ $1 -eq 2 ] ; then
	# 購読者の起動(C++)
	rosrun beginner_tutorials listener
elif [ $1 -eq 3 ] ; then
	# 配信者の起動(python)
	rosrun beginner_tutorials talker.py
elif [ $1 -eq 4 ] ; then
	# 購読者の起動(python)
	rosrun beginner_tutorials listener.py
fi



#!/bin/bash

#
# ROSのノードを理解する
#

WORK=`pwd`

# 環境の設定
source ${WORK}/catkin_ws/devel/setup.bash

# ノード(Nodes): １つのノードは ROS を使用して他のノードとやりとりします．
# トピック(Topics): ノードはメッセージをトピックへ向けてPublish(配信)し，同様にSubscribe(購読)することでトピックからメッセージを受け取ることができます．
# メッセージ(Messages): トピックへ配信したり購読したりするときの ROS のデータ型です．
# マスター(Master):ROSのネームサービス（例えば，ノードがお互いを検索することを助けます）
# rosout: ROS における stdout や stderr と同等の機能です．
# roscore: マスター + rosout + パラメータ サーバ（パラメータ サーバについては後の章で紹介します）

# talkerとlistenerはあらかじめ起動しておく
rosnode list
rosnode info /talker
rosnode info /listener

# pingで起動中か確認
#rosnode ping talker
#rosnode ping listener

#
# ROSのトピックを理解する
#
rosrun rqt_graph rqt_graph

rostopic -h
rostopic list -v

#
# ROSサービス
#
rosservice -h
rosservice list -v

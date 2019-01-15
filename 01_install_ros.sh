#!/bin/bash

#
# Install ROS
#
#http://wiki.ros.org/ja/ROS/Tutorials

# sorces.listを設定する
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

# 鍵の設定
wget http://packages.ros.org/ros.key -O - | sudo apt-key add -

# インストール
sudo apt install ros-melodic-desktop-full

# rosdepの初期化
sudo rosdep init
rosdep update


# 環境設定
#echo "source /opt/ros/hydro/setup.bash" >> ~/.bashrc
#source ~/.bashrc

# rosinstallの準備
sudo apt install python-rosinstall

# ORB_SLAM_DENSE_BUILD

该项目基于ORB_SLAM2原版本以及高翔修改的稠密点云版本修改而成 制作了dockerfile docker-compose，并且配备的可视化界面的轻量镜像，可以建造稠密点云地图 并且生成八叉树用于全局导航

## Prerequisites

项目测试于ubuntu18.04，ROS melodic

### base-environment

`apt update`
`apt-get install -y cmake git build-essential libgtk2.0-dev python3-pip wget gdb zip libgtk-3-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libdc1394-22-dev libglu1-mesa-dev freeglut3-dev mesa-common-dev libgl1-mesa-dev libglew-dev` 

### Pangolin

`git clone https://ghproxy.com/https://github.com/stevenlovegrove/Pangolin.git`
`cd Pangolin`
`git checkout v0.5`
`mkdir build`
`cd build`
`cmake ..`
`make -j`
`make install`

### OpenCV

`sudo apt install libopencv-dev`

如果安装失败 请读者自行克隆opencv 编译安装

### Eigen3

`sudo apt install libeigen3-dev`

如果安装失败 请读者自行克隆Eigen3编译安装

### PCL

`sudo apt install libpcl-dev`

如果安装失败 请读者自行克隆PCL编译安装

### ROS

推荐使用 鱼香ros的一键安装

```
wget http://fishros.com/install -O fishros && . fishros
```

## Building

Clone the repository and Build:

```
git clone https://github.com/sunjianwen7/ORB_SLAM_DENSE_BUILD.git ORB_SLAM2
cd ORB_SLAM2
chmod +x build.sh
./build.sh
```

`ROS package build:`

`cd ORB_SLAM2/Examples/ROS/ORB_SLAM2`

`mkdir build`
`cd build`

`export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:/dense-orbslam2/Examples/ROS`

`cmake ..` 
`make` 

## quickly start 

`rosrun ORB_SLAM2 RGBD orb_daufalt.yaml`

## docker

#如果使用可视化 务必将docker-compose中环境变量DISPLAY即容器环境变量 保持与主机DISPLAY一致

`cd ORB_SLAM2/docker`

`xhost +`

`docker-compose -f docker-compose_orb.yml up -d`

## Some instructions

topic_name请在yaml中自行修改，新增了PointCloudMapping 和 ROS 字段 分别对应 点云相关信息和 ROS相关信息 请读者根据自行需要更改

docker的使用 请读者根据上文提示 制作容器后 使用`docker exec -it orb /bin/bash` 根据自身需求安装其他功能包

## Experimental effect

![orb_test](https://sm.ms/image/INlfX4rSQ3HbTZc)

## License

```
@article{murORB2,
  title={{ORB-SLAM2}: an Open-Source {SLAM} System for Monocular, Stereo and {RGB-D} Cameras},
  author={Mur-Artal, Ra\'ul and Tard\'os, Juan D.},
  journal={IEEE Transactions on Robotics},
  volume={33},
  number={5},
  pages={1255--1262},
  doi = {10.1109/TRO.2017.2705103},
  year={2017}
 }
```

#!/bin/bash
set -e
# nvidia driver
#apt install nvidia-cuda-toolkit libnvidia-gl-515 -y
# rm system file
rm /even_install.sh /orbslam2.zip /ros_make.sh /pagolin_install.sh
# setup ros environment
source /opt/ros/$ROS_DISTRO/setup.bash
export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:/dense-orbslam2/Examples/ROS
exec "$@"

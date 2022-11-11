#!/bin/bash
set -e
# nvidia driver
#apt install nvidia-cuda-toolkit libnvidia-gl-515 -y
# setup ros environment
source /opt/ros/$ROS_DISTRO/setup.bash
export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:/dense-orbslam2/ORBSLAM2_ROS
roscore
exec "$@"

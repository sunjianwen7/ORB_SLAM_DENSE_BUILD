#!/bin/bash
set -e
# setup ros environment
source /opt/ros/$ROS_DISTRO/setup.bash
export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:/dense-orbslam2/Examples/ROS
roscore
exec "$@"

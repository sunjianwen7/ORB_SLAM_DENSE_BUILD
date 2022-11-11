echo "Configuring and building ROS ..."
cd /dense-orbslam2/ORBSLAM2_ROS
mkdir build
cd build
pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple rosdepc
rosdepc init
rosdepc fix-permissions
rosdepc update
source /opt/ros/melodic/setup.bash
export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:/dense-orbslam2/ORBSLAM2_ROS
apt install ros-melodic-tf* ros-melodic-image-transport ros-melodic-cv-bridge -y
cmake .. 
make 
echo "export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:/dense-orbslam2/ORBSLAM2_ROS" >> /opt/ros/melodic/setup.bash
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc

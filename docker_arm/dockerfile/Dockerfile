# This is an auto generated Dockerfile for ros:ros-core
# generated from docker_images/create_ros_core_image.Dockerfile.em
FROM ros:melodic-ros-core
COPY ./source/sources.list /etc/apt/
COPY ./sh/even_install.sh /
RUN /bin/bash /even_install.sh
COPY ./sh/pagolin_install.sh /
RUN /bin/bash /pagolin_install.sh
COPY ./source/orbslam2.zip /
RUN unzip /orbslam2.zip && cd dense-orbslam2 &&/bin/bash ./build.sh
COPY ./sh/ros_make.sh /
RUN /bin/bash /ros_make.sh
COPY ./sh/ros_entrypoint.sh /
RUN chmod 777 /ros_entrypoint.sh
ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["/bin/sh"]

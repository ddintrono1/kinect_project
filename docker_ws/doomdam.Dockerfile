# Base image
FROM ros:jazzy

# Add libusb
RUN apt-get update -y && apt-get install -y git cmake build-essential libusb-1.0-0-dev

# Add cython
#RUN apt-get update -y && apt-get install -y cython3

# Workdir
WORKDIR /root/ros_ws

# Auto-source ROS workspace on bash startup
RUN echo "source /root/ros_ws/install/setup.bash 2>/dev/null || true" >> /root/.bashrc
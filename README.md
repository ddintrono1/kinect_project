Cython is necessary because of the creator files. Wrappers are based on Cython.

To install libfreenect correctly:
-   Clone the repo:
        git clone https://github.com/OpenKinect/libfreenect
-   cd ros_ws/src/libfreenect
-   mkdir build && cd build
-   cmake .. -L #it allows to read CMakeLists.txt and create the build file. This is the reason for this folder name
-   cmake .. -DBUILD_PYTHON3=ON # you can configure them as you want
-   cd ..
-   make # it needs to compile and it have to find CMakeFiles to work properly
-   touch /root/ros_ws/src/libfreenect/COLCON_IGNORE (this is a CMake library not a ROS package. ROS must not colcon build it)
Now you can "colcon build" but there aren't packages yet :)

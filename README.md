Cython may be required (test) check dockerfile.

To install libfreenect correctly:
-   Clone the repo:
        git clone https://github.com/OpenKinect/libfreenect
-   Colcon build with cmake settings:
        colcon build --packages-select libfreenect \
            --cmake-args \
                -DBUILD_PYTHON3=ON \
                -DBUILD_CV=OFF \
                -DBUILD_EXAMPLES=OFF \
                -DCMAKE_BUILD_TYPE=Release
-   Inside ros_ws/build/libfreenect run:
        cmake install
        

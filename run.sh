xhost +
docker run -it --net host --rm --privileged \
    --gpus all \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v ~/.Xauthority:/root/.Xauthority \
    -e DISPLAY=$DISPLAY \
    -e XAUTHORITY=$XAUTHORITY \
    -v ./ros_ws/:/root/ros_ws \
    --name doomdam_container \
    ros:doomdam bash 
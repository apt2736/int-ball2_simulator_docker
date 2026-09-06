#!/bin/bash
docker run --rm \
  -v "$(pwd)/ib2_user_ws:$(pwd)/ib2_user_ws" \
  ib2_simulator:latest \
  bash -c "source /opt/ros/melodic/setup.bash && \
           source /home/nvidia/IB2/Int-Ball2_platform_simulator/devel/setup.bash && \
           cp -r $(pwd)/ib2_user_ws/src/user/ib2_trial/ /home/nvidia/IB2/Int-Ball2_platform_simulator/src/user/ && \
	   cd /home/nvidia/IB2/Int-Ball2_platform_simulator/ && catkin_make"

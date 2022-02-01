# uav_ws
Implementation of the filter_message ROS package

Sync data from two topics:
  + /mavros/setpoint_position/local
  + /camera/depth/points


into the sync topic
  + /sync_topic

Information of custom message 
```
rosmsg info sync_ekf2_pc/pose_n_pc 
```

Source file in: src/sync_ekf2_pc/src/sync_ekf2_pc_node.cpp

Please source /devel/setup.bash before using
Please try the following command line
```
rosrun sync_ekf2_pc sync_ekf2_pc_node
```

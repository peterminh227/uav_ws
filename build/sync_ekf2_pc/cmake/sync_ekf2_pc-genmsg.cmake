# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sync_ekf2_pc: 1 messages, 0 services")

set(MSG_I_FLAGS "-Isync_ekf2_pc:/home/samurai/catkin_ws/src/sync_ekf2_pc/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sync_ekf2_pc_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/samurai/catkin_ws/src/sync_ekf2_pc/msg/pose_n_pc.msg" NAME_WE)
add_custom_target(_sync_ekf2_pc_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sync_ekf2_pc" "/home/samurai/catkin_ws/src/sync_ekf2_pc/msg/pose_n_pc.msg" "sensor_msgs/PointCloud2:sensor_msgs/PointField:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(sync_ekf2_pc
  "/home/samurai/catkin_ws/src/sync_ekf2_pc/msg/pose_n_pc.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sync_ekf2_pc
)

### Generating Services

### Generating Module File
_generate_module_cpp(sync_ekf2_pc
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sync_ekf2_pc
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sync_ekf2_pc_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sync_ekf2_pc_generate_messages sync_ekf2_pc_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/samurai/catkin_ws/src/sync_ekf2_pc/msg/pose_n_pc.msg" NAME_WE)
add_dependencies(sync_ekf2_pc_generate_messages_cpp _sync_ekf2_pc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sync_ekf2_pc_gencpp)
add_dependencies(sync_ekf2_pc_gencpp sync_ekf2_pc_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sync_ekf2_pc_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(sync_ekf2_pc
  "/home/samurai/catkin_ws/src/sync_ekf2_pc/msg/pose_n_pc.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sync_ekf2_pc
)

### Generating Services

### Generating Module File
_generate_module_eus(sync_ekf2_pc
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sync_ekf2_pc
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(sync_ekf2_pc_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(sync_ekf2_pc_generate_messages sync_ekf2_pc_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/samurai/catkin_ws/src/sync_ekf2_pc/msg/pose_n_pc.msg" NAME_WE)
add_dependencies(sync_ekf2_pc_generate_messages_eus _sync_ekf2_pc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sync_ekf2_pc_geneus)
add_dependencies(sync_ekf2_pc_geneus sync_ekf2_pc_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sync_ekf2_pc_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(sync_ekf2_pc
  "/home/samurai/catkin_ws/src/sync_ekf2_pc/msg/pose_n_pc.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sync_ekf2_pc
)

### Generating Services

### Generating Module File
_generate_module_lisp(sync_ekf2_pc
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sync_ekf2_pc
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sync_ekf2_pc_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sync_ekf2_pc_generate_messages sync_ekf2_pc_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/samurai/catkin_ws/src/sync_ekf2_pc/msg/pose_n_pc.msg" NAME_WE)
add_dependencies(sync_ekf2_pc_generate_messages_lisp _sync_ekf2_pc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sync_ekf2_pc_genlisp)
add_dependencies(sync_ekf2_pc_genlisp sync_ekf2_pc_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sync_ekf2_pc_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(sync_ekf2_pc
  "/home/samurai/catkin_ws/src/sync_ekf2_pc/msg/pose_n_pc.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sync_ekf2_pc
)

### Generating Services

### Generating Module File
_generate_module_nodejs(sync_ekf2_pc
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sync_ekf2_pc
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(sync_ekf2_pc_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(sync_ekf2_pc_generate_messages sync_ekf2_pc_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/samurai/catkin_ws/src/sync_ekf2_pc/msg/pose_n_pc.msg" NAME_WE)
add_dependencies(sync_ekf2_pc_generate_messages_nodejs _sync_ekf2_pc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sync_ekf2_pc_gennodejs)
add_dependencies(sync_ekf2_pc_gennodejs sync_ekf2_pc_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sync_ekf2_pc_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(sync_ekf2_pc
  "/home/samurai/catkin_ws/src/sync_ekf2_pc/msg/pose_n_pc.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sync_ekf2_pc
)

### Generating Services

### Generating Module File
_generate_module_py(sync_ekf2_pc
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sync_ekf2_pc
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sync_ekf2_pc_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sync_ekf2_pc_generate_messages sync_ekf2_pc_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/samurai/catkin_ws/src/sync_ekf2_pc/msg/pose_n_pc.msg" NAME_WE)
add_dependencies(sync_ekf2_pc_generate_messages_py _sync_ekf2_pc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sync_ekf2_pc_genpy)
add_dependencies(sync_ekf2_pc_genpy sync_ekf2_pc_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sync_ekf2_pc_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sync_ekf2_pc)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sync_ekf2_pc
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(sync_ekf2_pc_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(sync_ekf2_pc_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sync_ekf2_pc)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sync_ekf2_pc
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(sync_ekf2_pc_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(sync_ekf2_pc_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sync_ekf2_pc)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sync_ekf2_pc
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(sync_ekf2_pc_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(sync_ekf2_pc_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sync_ekf2_pc)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sync_ekf2_pc
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(sync_ekf2_pc_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(sync_ekf2_pc_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sync_ekf2_pc)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sync_ekf2_pc\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sync_ekf2_pc
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(sync_ekf2_pc_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(sync_ekf2_pc_generate_messages_py sensor_msgs_generate_messages_py)
endif()

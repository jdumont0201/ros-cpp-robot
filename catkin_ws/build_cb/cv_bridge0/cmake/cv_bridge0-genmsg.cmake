# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cv_bridge0: 2 messages, 0 services")

set(MSG_I_FLAGS "-Icv_bridge0:/home/jbmdumont/catkin_ws/src/cv_bridge0/msg;-Isensor_msgs:/opt/ros/lunar/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/lunar/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/lunar/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cv_bridge0_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jbmdumont/catkin_ws/src/cv_bridge0/msg/tennisball.msg" NAME_WE)
add_custom_target(_cv_bridge0_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cv_bridge0" "/home/jbmdumont/catkin_ws/src/cv_bridge0/msg/tennisball.msg" ""
)

get_filename_component(_filename "/home/jbmdumont/catkin_ws/src/cv_bridge0/msg/tennisballs.msg" NAME_WE)
add_custom_target(_cv_bridge0_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cv_bridge0" "/home/jbmdumont/catkin_ws/src/cv_bridge0/msg/tennisballs.msg" "cv_bridge0/tennisball:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(cv_bridge0
  "/home/jbmdumont/catkin_ws/src/cv_bridge0/msg/tennisball.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cv_bridge0
)
_generate_msg_cpp(cv_bridge0
  "/home/jbmdumont/catkin_ws/src/cv_bridge0/msg/tennisballs.msg"
  "${MSG_I_FLAGS}"
  "/home/jbmdumont/catkin_ws/src/cv_bridge0/msg/tennisball.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cv_bridge0
)

### Generating Services

### Generating Module File
_generate_module_cpp(cv_bridge0
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cv_bridge0
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cv_bridge0_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cv_bridge0_generate_messages cv_bridge0_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jbmdumont/catkin_ws/src/cv_bridge0/msg/tennisball.msg" NAME_WE)
add_dependencies(cv_bridge0_generate_messages_cpp _cv_bridge0_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jbmdumont/catkin_ws/src/cv_bridge0/msg/tennisballs.msg" NAME_WE)
add_dependencies(cv_bridge0_generate_messages_cpp _cv_bridge0_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cv_bridge0_gencpp)
add_dependencies(cv_bridge0_gencpp cv_bridge0_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cv_bridge0_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(cv_bridge0
  "/home/jbmdumont/catkin_ws/src/cv_bridge0/msg/tennisball.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cv_bridge0
)
_generate_msg_eus(cv_bridge0
  "/home/jbmdumont/catkin_ws/src/cv_bridge0/msg/tennisballs.msg"
  "${MSG_I_FLAGS}"
  "/home/jbmdumont/catkin_ws/src/cv_bridge0/msg/tennisball.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cv_bridge0
)

### Generating Services

### Generating Module File
_generate_module_eus(cv_bridge0
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cv_bridge0
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cv_bridge0_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cv_bridge0_generate_messages cv_bridge0_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jbmdumont/catkin_ws/src/cv_bridge0/msg/tennisball.msg" NAME_WE)
add_dependencies(cv_bridge0_generate_messages_eus _cv_bridge0_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jbmdumont/catkin_ws/src/cv_bridge0/msg/tennisballs.msg" NAME_WE)
add_dependencies(cv_bridge0_generate_messages_eus _cv_bridge0_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cv_bridge0_geneus)
add_dependencies(cv_bridge0_geneus cv_bridge0_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cv_bridge0_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(cv_bridge0
  "/home/jbmdumont/catkin_ws/src/cv_bridge0/msg/tennisball.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cv_bridge0
)
_generate_msg_lisp(cv_bridge0
  "/home/jbmdumont/catkin_ws/src/cv_bridge0/msg/tennisballs.msg"
  "${MSG_I_FLAGS}"
  "/home/jbmdumont/catkin_ws/src/cv_bridge0/msg/tennisball.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cv_bridge0
)

### Generating Services

### Generating Module File
_generate_module_lisp(cv_bridge0
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cv_bridge0
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cv_bridge0_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cv_bridge0_generate_messages cv_bridge0_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jbmdumont/catkin_ws/src/cv_bridge0/msg/tennisball.msg" NAME_WE)
add_dependencies(cv_bridge0_generate_messages_lisp _cv_bridge0_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jbmdumont/catkin_ws/src/cv_bridge0/msg/tennisballs.msg" NAME_WE)
add_dependencies(cv_bridge0_generate_messages_lisp _cv_bridge0_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cv_bridge0_genlisp)
add_dependencies(cv_bridge0_genlisp cv_bridge0_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cv_bridge0_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(cv_bridge0
  "/home/jbmdumont/catkin_ws/src/cv_bridge0/msg/tennisball.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cv_bridge0
)
_generate_msg_nodejs(cv_bridge0
  "/home/jbmdumont/catkin_ws/src/cv_bridge0/msg/tennisballs.msg"
  "${MSG_I_FLAGS}"
  "/home/jbmdumont/catkin_ws/src/cv_bridge0/msg/tennisball.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cv_bridge0
)

### Generating Services

### Generating Module File
_generate_module_nodejs(cv_bridge0
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cv_bridge0
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cv_bridge0_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cv_bridge0_generate_messages cv_bridge0_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jbmdumont/catkin_ws/src/cv_bridge0/msg/tennisball.msg" NAME_WE)
add_dependencies(cv_bridge0_generate_messages_nodejs _cv_bridge0_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jbmdumont/catkin_ws/src/cv_bridge0/msg/tennisballs.msg" NAME_WE)
add_dependencies(cv_bridge0_generate_messages_nodejs _cv_bridge0_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cv_bridge0_gennodejs)
add_dependencies(cv_bridge0_gennodejs cv_bridge0_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cv_bridge0_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(cv_bridge0
  "/home/jbmdumont/catkin_ws/src/cv_bridge0/msg/tennisball.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cv_bridge0
)
_generate_msg_py(cv_bridge0
  "/home/jbmdumont/catkin_ws/src/cv_bridge0/msg/tennisballs.msg"
  "${MSG_I_FLAGS}"
  "/home/jbmdumont/catkin_ws/src/cv_bridge0/msg/tennisball.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cv_bridge0
)

### Generating Services

### Generating Module File
_generate_module_py(cv_bridge0
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cv_bridge0
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cv_bridge0_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cv_bridge0_generate_messages cv_bridge0_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jbmdumont/catkin_ws/src/cv_bridge0/msg/tennisball.msg" NAME_WE)
add_dependencies(cv_bridge0_generate_messages_py _cv_bridge0_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jbmdumont/catkin_ws/src/cv_bridge0/msg/tennisballs.msg" NAME_WE)
add_dependencies(cv_bridge0_generate_messages_py _cv_bridge0_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cv_bridge0_genpy)
add_dependencies(cv_bridge0_genpy cv_bridge0_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cv_bridge0_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cv_bridge0)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cv_bridge0
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(cv_bridge0_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(cv_bridge0_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cv_bridge0)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cv_bridge0
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(cv_bridge0_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(cv_bridge0_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cv_bridge0)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cv_bridge0
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(cv_bridge0_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(cv_bridge0_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cv_bridge0)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cv_bridge0
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(cv_bridge0_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(cv_bridge0_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cv_bridge0)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cv_bridge0\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cv_bridge0
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(cv_bridge0_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(cv_bridge0_generate_messages_py std_msgs_generate_messages_py)
endif()

# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "led1: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/lunar/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(led1_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jbmdumont/catkin_ws/src/led1/srv/mode.srv" NAME_WE)
add_custom_target(_led1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "led1" "/home/jbmdumont/catkin_ws/src/led1/srv/mode.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(led1
  "/home/jbmdumont/catkin_ws/src/led1/srv/mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/led1
)

### Generating Module File
_generate_module_cpp(led1
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/led1
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(led1_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(led1_generate_messages led1_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jbmdumont/catkin_ws/src/led1/srv/mode.srv" NAME_WE)
add_dependencies(led1_generate_messages_cpp _led1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(led1_gencpp)
add_dependencies(led1_gencpp led1_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS led1_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(led1
  "/home/jbmdumont/catkin_ws/src/led1/srv/mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/led1
)

### Generating Module File
_generate_module_eus(led1
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/led1
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(led1_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(led1_generate_messages led1_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jbmdumont/catkin_ws/src/led1/srv/mode.srv" NAME_WE)
add_dependencies(led1_generate_messages_eus _led1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(led1_geneus)
add_dependencies(led1_geneus led1_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS led1_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(led1
  "/home/jbmdumont/catkin_ws/src/led1/srv/mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/led1
)

### Generating Module File
_generate_module_lisp(led1
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/led1
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(led1_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(led1_generate_messages led1_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jbmdumont/catkin_ws/src/led1/srv/mode.srv" NAME_WE)
add_dependencies(led1_generate_messages_lisp _led1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(led1_genlisp)
add_dependencies(led1_genlisp led1_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS led1_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(led1
  "/home/jbmdumont/catkin_ws/src/led1/srv/mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/led1
)

### Generating Module File
_generate_module_nodejs(led1
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/led1
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(led1_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(led1_generate_messages led1_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jbmdumont/catkin_ws/src/led1/srv/mode.srv" NAME_WE)
add_dependencies(led1_generate_messages_nodejs _led1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(led1_gennodejs)
add_dependencies(led1_gennodejs led1_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS led1_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(led1
  "/home/jbmdumont/catkin_ws/src/led1/srv/mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/led1
)

### Generating Module File
_generate_module_py(led1
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/led1
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(led1_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(led1_generate_messages led1_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jbmdumont/catkin_ws/src/led1/srv/mode.srv" NAME_WE)
add_dependencies(led1_generate_messages_py _led1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(led1_genpy)
add_dependencies(led1_genpy led1_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS led1_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/led1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/led1
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(led1_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/led1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/led1
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(led1_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/led1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/led1
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(led1_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/led1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/led1
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(led1_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/led1)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/led1\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/led1
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(led1_generate_messages_py std_msgs_generate_messages_py)
endif()

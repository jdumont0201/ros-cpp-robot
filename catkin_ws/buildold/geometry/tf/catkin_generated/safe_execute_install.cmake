execute_process(COMMAND "/home/jbmdumont/catkin_ws/build/geometry/tf/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/jbmdumont/catkin_ws/build/geometry/tf/catkin_generated/python_distutils_install.sh) returned error code ")
endif()

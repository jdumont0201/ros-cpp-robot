# - Config file for the orocos-kdl package
# It defines the following variables
#  orocos_kdl_INCLUDE_DIRS - include directories for Orocos KDL
#  orocos_kdl_LIBRARIES    - libraries to link against for Orocos KDL
#  orocos_kdl_PKGCONFIG_DIR - directory containing the .pc pkgconfig files

# Compute paths
set(orocos_kdl_INCLUDE_DIRS "${CMAKE_CURRENT_LIST_DIR}/../../../include;;/usr/local/include/eigen3")

if(NOT TARGET orocos-kdl)
  include("${CMAKE_CURRENT_LIST_DIR}/OrocosKDLTargets.cmake")
endif()

set(orocos_kdl_LIBRARIES orocos-kdl)

# where the .pc pkgconfig files are installed
set(orocos_kdl_PKGCONFIG_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../lib/pkgconfig")

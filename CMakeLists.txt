cmake_minimum_required(VERSION 2.8.3)
project(eigen_catkin)

find_package(catkin_simple REQUIRED)

catkin_simple()

include(ExternalProject)

file(MAKE_DIRECTORY ${CATKIN_DEVEL_PREFIX}/include/eigen3)

ExternalProject_Add(eigen_src
  URL http://bitbucket.org/eigen/eigen/get/3.2.1.tar.bz2
  UPDATE_COMMAND ""
  CMAKE_ARGS -DCMAKE_INSTALL_PREFIX:PATH=${CATKIN_DEVEL_PREFIX}
)

cs_add_library(${PROJECT_NAME} src/dependency_tracker.cc)
add_dependencies(${PROJECT_NAME} glog_src)
target_link_libraries(${PROJECT_NAME} ${CATKIN_DEVEL_PREFIX}/lib/libglog${CMAKE_SHARED_LIBRARY_SUFFIX})

cs_install()
cs_export(INCLUDE_DIRS ${CATKIN_DEVEL_PREFIX}/include/eigen3/
          CFG_EXTRAS eigen-extras.cmake)

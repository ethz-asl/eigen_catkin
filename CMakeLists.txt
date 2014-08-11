cmake_minimum_required(VERSION 2.8.3)
project(eigen_catkin)

find_package(catkin_simple REQUIRED)

catkin_simple()

include(ExternalProject)

file(MAKE_DIRECTORY ${CATKIN_DEVEL_PREFIX}/include/eigen3)

ExternalProject_Add(eigen_src
  HG_REPOSITORY ssh://hg@bitbucket.org/eigen/eigen
  HG_TAG 6b38706d90a9fe182e66ab88477b3dbde34b9f66
  UPDATE_COMMAND ""
  CMAKE_ARGS -DCMAKE_INSTALL_PREFIX:PATH=${CATKIN_DEVEL_PREFIX}
)

cs_add_library(${PROJECT_NAME} src/dependency_tracker.cc)
add_dependencies(${PROJECT_NAME} eigen_src)

cs_install()
cs_export(INCLUDE_DIRS ${CATKIN_DEVEL_PREFIX}/include/eigen3/
          CFG_EXTRAS eigen-extras.cmake)

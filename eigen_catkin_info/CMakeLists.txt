cmake_minimum_required(VERSION 2.8.3)
project(eigen_catkin_info)

find_package(catkin_simple REQUIRED)
catkin_simple(ALL_DEPS_REQUIRED)

add_definitions('-DEIGEN_CATKIN_EIGEN_INCLUDE_DIR=${eigen_catkin_INCLUDE_DIRS}')

cs_add_executable(${PROJECT_NAME}
  src/${PROJECT_NAME}.cpp
)

set_target_properties(${PROJECT_NAME}
    PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY "${CATKIN_DEVEL_PREFIX}/bin"
)
cs_install()
cs_export()

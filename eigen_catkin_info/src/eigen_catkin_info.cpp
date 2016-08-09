#include <iostream>
#include <Eigen/Core>

#ifndef EIGEN_CATKIN_EIGEN_INCLUDE_DIR
#error "EIGEN_CATKIN_EIGEN_INCLUDE_DIR is not defined!"
#define TEXT "NOT DEFINE"
#else
#define TO_STRING_(X) #X
#define TO_STRING(X) TO_STRING_(X)
#define TEXT TO_STRING(EIGEN_CATKIN_EIGEN_INCLUDE_DIR)
#endif

int main(int argc, char **argv) {
  std::cout <<  "eigen_catkin is using Eigen in '" TEXT "'.\nThe version there is " << EIGEN_WORLD_VERSION << "." << EIGEN_MAJOR_VERSION << "." << EIGEN_MINOR_VERSION << "." << std::endl;
  return 0;
}

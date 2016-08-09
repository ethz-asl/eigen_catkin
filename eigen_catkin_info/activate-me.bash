#!/usr/bin/env bash

set -e

cd $(dirname $BASH_SOURCE)
cd ..
cd ..

ln -sv eigen_catkin/eigen_catkin_info ./

cd eigen_catkin_info

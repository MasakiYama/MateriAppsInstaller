mkdir -p build
cd build
${CMAKE} -DCMAKE_INSTALL_PREFIX=$PREFIX -DENABLE_OPENMP=ON -DENABLE_THREADS=ON ..
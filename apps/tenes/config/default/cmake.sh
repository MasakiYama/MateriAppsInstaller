set -u

${CMAKE:-cmake} \
  -DCMAKE_INSTALL_PREFIX=$PREFIX \
  -DCMAKE_CXX_FLAGS="$OPT_FLAGS" \
  -DCMAKE_VERBOSE_MAKEFILE=1 \
  -DCMAKE_BUILD_TYPE=Release \
  ../ | tee -a $LOG

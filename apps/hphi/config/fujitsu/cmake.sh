${CMAKE} \
  -DCMAKE_INSTALL_PREFIX=${PREFIX} \
  -DCMAKE_VERBOSE_MAKEFILE=1 \
  -DCMAKE_C_FLAGS=${OPT_FLAGS} \
  -DCMAKE_Fortran_FLAGS=${OPT_FLAGS} \
  -DCONFIG=fujitsu \
  ../ 2>&1 | tee -a $LOG

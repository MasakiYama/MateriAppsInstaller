#!/bin/sh

SCRIPT_DIR=$(cd "$(dirname $0)"; pwd)
. $SCRIPT_DIR/../../scripts/util.sh
. $SCRIPT_DIR/version.sh
set_prefix

if [ -f $SOURCE_DIR/${__NAME__}-${__VERSION__}.tar.gz ]; then :; else
  check wget https://www.python.org/ftp/python/$__VERSION__/Python-$__VERSION__.tgz -O $SOURCE_DIR/${__NAME__}-${__VERSION__}.tar.gz
fi

if [ -f $SOURCE_DIR/get-pip.py ]; then :; else
  wget $WGET_OPTION -O $SOURCE_DIR/get-pip.py https://bootstrap.pypa.io/get-pip.py
fi


#!/bin/bash

cnt=$(grep processor /proc/cpuinfo | wc -l)

# this is is not quite right
# find what test to use for empty string ($1)
#
if [ -z $1 ]; then
  echo "Please provide CPU parameter"
  exit 9
fi

if [ $cnt -lt $1 ]; then
  echo "Insufficient CPUs, install abandoned"
fi

#!/bin/bash

if [ "$#" -lt 1 ]; then
  echo "Usage: $0 <value1> <value2> ..."
  exit 1
fi

echo "Provided values:"

while [ "$#" -gt 0 ]; do
  echo "$1"
  shift
done

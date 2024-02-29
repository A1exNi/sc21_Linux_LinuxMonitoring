#!/bin/bash

REGEX="^[0-9]+([.][0-9]+)?$"

if [ $# -ne 1 ]
  then echo wrong number of parameters
else
  if [[ $1 =~ $REGEX ]];
    then echo parameter is a number
  else
    echo $1
  fi
fi

#!/bin/bash
source ./check_param
source ./print_info
error=$( check_param $@ )
if [ $error -eq 0 ]
then
  if [ -d $1 ]
  then
    time=$( date +%s%N )
    print_info $@
    time=`echo "scale=2; ( $( date +%s%N ) - $time ) / 1000000000" | bc`
    echo "Script execution time (in seconds) = $time"
  else
    echo The $1 directory does not exist
  fi
else
  echo The script must be run with one parameter, which is a relative or absolute path and must end with \"/\".
fi

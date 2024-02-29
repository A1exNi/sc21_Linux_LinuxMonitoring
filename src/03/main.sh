#!/bin/bash
source ./print_info
source ./check_param
source ./set_color

message="The script should include 4 parameters in form of integers in the range from 1 to 6. And the values 1 with 2 and 3 with 4 parameters should not be the same. Try again."
error=$( check_param $@ )
if [ $error -eq 0 ]
then
  color1=$( set_color $1 )
  color2=$( set_fon $2 )
  color3=$( set_color $3 )
  color4=$( set_fon $4 )
  print_info $color1 $color2 $color3 $color4
else
  echo $message
fi

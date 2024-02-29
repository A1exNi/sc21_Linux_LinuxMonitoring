#!/bin/bash
source ./print_info
source ./check_param
source ./set_color

if [ $# -eq 0 ]
then
  colors=$( get_color_from_conf )
  read -a array <<< $colors 
  color1=$( set_color ${array[0]} )
  color2=$( set_fon ${array[1]} )
  color3=$( set_color ${array[2]} )
  color4=$( set_fon ${array[3]} )
  print_info $color1 $color2 $color3 $color4
  print_config $colors
else
  echo The script must not contain parameters. Try again.
fi

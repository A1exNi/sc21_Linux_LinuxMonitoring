#!/bin/bash
source ./print_info
if [ $# -eq 0 ]
then
  DATE=$( date )
  UPTIME=$( uptime -p )
  UPTIME_SEC=$( awk '{print $1}' /proc/uptime )
  RAM_USED=$( vmstat -s | grep 'used memory' | awk '{print $1}' )
  RAM_FREE=$( vmstat -s | grep 'free memory' | awk '{print $1}' )
  print_info $DATE $UPTIME_SEC $RAM_USED $RAM_FREE
  read -p "Want to write data to a file?[Y/N]: " answer
  if [[ ! $answer =~ [0-9]+ ]]
  then	    
      if [[ $answer == y ]] || [[ $answer == Y ]]
      then   
        DD=$( date +'%d_%m_%Y_%H_%M_%S' )
        name=$DD.status
        print_info $DATE $UPTIME_SEC $RAM_USED $RAM_FREE > $name
      fi
  fi
else
  echo The script must not contain parameters. Try again.
fi

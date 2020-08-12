#!/bin/sh

if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]

then

  echo " Powered Off"

else

  if [ $(echo info | bluetoothctl | grep 'Device' | wc -c) -eq 0 ]

  then 

    echo " Powered On"

  fi

  echo info | bluetoothctl | grep 'Alias' | awk -F': ' '/Alias: /{print " "$2}'

fi

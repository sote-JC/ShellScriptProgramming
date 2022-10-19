#!/bin/sh
if ! [ -f DB.txt ]
then
  eval "touch DB.txt"
fi
echo "$1 $2" >> DB.txt
exit 0

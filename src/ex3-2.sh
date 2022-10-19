#!/bin/sh
result=0
case "$2" in
  +)
   result=`expr $1 + $3` 
   echo $result;;
  -)
   result=`expr $1 - $3`
   echo $result;;
  *)
   echo "입력 형태가 잘못되었습니다.";;
esac
exit 0

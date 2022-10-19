#!/bin/sh
bmi=`echo "scale=2;$1/($2*$2/10000)" | bc`
if [ `echo "$bmi > 23" | bc` -eq 1 ]
then
  echo "과체중입니다."
elif [ `echo "$bmi >= 18.5" | bc` -eq 1 ]
then
  echo "정상체중입니다."
else
  echo "저체중입니다."
fi
exit 0

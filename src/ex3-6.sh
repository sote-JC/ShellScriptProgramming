#!/bin/bash
read files
eval "mkdir $1"
eval "cd $1"
i=0
for file in $files; do
  if [ $i = 5 ]
  then
    eval "tar cvf $file *"
    eval "mkdir $1"
    eval "mv $file ./$1/$file"
    eval "cd $1"
    eval "tar xvf $file"
  fi
  if ! [ -e $file ]
  then
    eval "touch $file"
  fi
  i=`expr $i + 1`
done
exit 0

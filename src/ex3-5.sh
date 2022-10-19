#!/bin/sh
op=$1
myFunc () {
  echo "함수 안으로 들어 왔음"
  eval "ls $op"
  return
}
echo "프로그램을 시작합니다."
myFunc
echo "프로그램을 종료합니다."
exit 0

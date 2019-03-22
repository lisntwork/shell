#!/bin/bash
#石头、剪刀、布游戏

game=(石头 剪刀 布)
number=$[RANDOM%3]
computer=${game[$number]}

echo "请根据提示选择您的出手方式"
echo "0 --> 石头"
echo "1 --> 剪刀"
echo "2 --> 布"

read -p "please enter choice:" person

case $person in
  0)
    if [ $number -eq 0 ];then
	echo "computer:$computer   person:石头"
	echo "平局!"
    elif [ $number -eq 1 ];then
	echo "computer:$computer   person:石头"
	echo "person win!"
    else
	echo "computer:$computer   person:石头"
	echo "computer win!"
    fi
    ;;
  1)
    if [ $number -eq 0 ];then
	echo "computer:$computer   person:剪刀"
	echo "computer win!"
    elif [ $number -eq 1 ];then
	echo "computer:$computer   person:剪刀"
	echo "平局"
    else
	echo "computer:$computer   person:剪刀"
	echo "person win!"
    fi
    ;;
  2)
    if [ $number -eq 0 ];then
	echo "computer:$computer   person:布"
	echo "person win!"
    elif [ $number -eq 1 ];then
	echo "computer:$computer   person:布"
	echo "computer win!"
    else
	echo "computer:$computer   person:布"
	echo "平局"
    fi
    ;;
  *)
    echo "enter error!"
    ;;
esac

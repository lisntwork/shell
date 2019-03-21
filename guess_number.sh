#!/bin/bash

numbers=$[RANDOM%100+1]

while true
do
  read -p "please enter guess numbers: " guess
  if [ $guess -eq $numbers ]
    then
      echo "guess correct"
      exit
  elif [ $guess -gt $numbers ]
    then
      echo "guess max"
  else
      echo "guess min"
  fi
done


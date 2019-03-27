#!/bin/bash
#100 以内的所有正整数相加求和(1+2+3+4...+100)
sum = 0

for i in `seq 100`;do
	sum=$[sum+i]
	
done
	echo "sum 100: $sum"


	

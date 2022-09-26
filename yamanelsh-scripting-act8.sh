#!/bin/bash

i=1

array=()

while ((i < 6)); do
	echo "Enter number $i"
	read inp
	array+=($inp)
	((i++))
done
echo ${array[@]}
echo "Would you like to continue? (Y/N)"
read inp
yes=$inp


	if [ $yes == "Y" ]; then
		while ((i < 11)); do
			echo "Enter a number $i"
			read inp
			array+=($inp)
			((i++))
	done
	fi


mult=1
sum=0
min=${array[0]}
max=${array[0]}

for ii in ${array[@]}; do
	mult=$(( $mult*$ii ))
	sum=$(( $sum+$ii ))
	if (( min>ii )); then
		min=$ii
	fi

	if (( max<ii )); then
		max=$ii
	fi
done

echo "Product is $mult"

avg=$(( $sum/($i-1) ))

echo "Average is $avg"

echo "Sum is $sum"

echo "Max is $max"

echo "Min is $min"

#!/bin/bash

# This script keeps calculating the next member of the trinomial
# tribonacci sequence until the member is bigger than or equal to the input.

# For more information about the number sequence see https://oeis.org/A192806

# The formula goes a(n) = 7a(n-1) - 5a(n-2) + a(n-3),
# with a(0)=a(1)=1 and a(2)=4

# It is calculated using an iterative algorithm
# This is much faster than a recursive algorihm
x=1; y=1; z=4

# Check if correct number of argurments (1) has been entered,
# Improvement: make the script handle anything which is not integers
if [[ $# -ne 1 ]]; then
	echo "Indtast præcist ét heltal"
#Special case for handling input less than the what is in the initial sequence.
elif [[ $1 -eq 1 ]]; then
	echo 1
	echo 1
# If the input is a single positive number, carry on
elif [[ $1 -gt 1 ]]; then
	# -le is used to check for less than or equal to because
	# it can handle comparing integers and strings
	while [[ $result -le $1 ]]; do

		echo $x

		result=$[ 7*$z - 5*$y + $x ]

		x=$y
		y=$z
		z=$result

	done

	# Print the numbers that have been calculated and are smaller than result
	echo $x
	echo $y
fi

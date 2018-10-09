#!/bin/bash



# This function returns the n-th members of the trinomial tribonacci sequence
# For more information about the number sequence see https://oeis.org/A192806

# The general formula goes a(n) = 7a(n-1) - 5a(n-2) + a(n-3),
# with a(0)=a(1)=1 and a(2)=4
function tritri {
	# -eq is used to check for equality because it can
	# handle comparing strings to integers
	if [[ $1 -eq 0 || $1 -eq 1 ]]; then
		echo 1
	elif [[ $1 -eq 2 ]]; then
		echo 4
	else
		echo $[7 * `tritri $[$1-1]` - 5 * `tritri $[$1-2]` + `tritri $[$1-3]`]
	fi
}



# This script keeps calculating the next member of the trinomial
# tribonacci sequence until the member is bigger than or equal to the input.

# Check if correct number of argurments (1) has been entered,
# Improvement: make the script handle anything which is not integers
if [[ $# -ne 1 ]]; then
	echo "Indtast præcist ét heltal"

# If the input is a single number, carry on
else
	i=0
	result=0

	# -le is used to check for less than or equal to because
	# it can handle comparing integers and strings
	while [[ $result -le $1 ]]; do
		result=`tritri $i`
		echo $result
		i=$[$i + 1]
	done
fi
#Arthimetic operations using 3 variables and finding the max and min of the operation

echo "Enter a number A"
read a
echo "Enter a number B"
read b
echo "Enter a number C"
read c

arthimetic_operation_1=$((a + b * c))
arthimetic_operation_2=$((a % b + c))
arthimetic_operation_3=$((c + a / b))
arthimetic_operation_4=$((a * b + c))

arr=($arthimetic_operation_1 $arthimetic_operation_2 $arthimetic_operation_3 $arthimetic_operation_4)
echo ${arr[*]}

length_of_array=${#arr[*]}

max=0

for ((i=0; i<$length_of_array; i++))
do
	if [ ${arr[i]} -gt $max ]
	then
		max=${arr[i]}
	fi
done
echo $max

min=$max

for ((j=0; j<$length_of_array; j++))
do
	if [ ${arr[j]} -lt $min ]
	then
		min=${arr[j]}
	fi
done
echo $min
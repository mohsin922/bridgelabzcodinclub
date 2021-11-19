#1==> 

echo "Enter the number A"
read a
echo "Enter the number B"
read b
echo "Enter the number C"
read c

#2==> Compute Arthemetic operation 1

operation_1=$((a+b*c))
echo $operation_1

#3==> Compute Arthemetic operation 2

operation_2=$((a*b+c))
echo $operation_2

#4==> Compute Arthemetic operation 3

operation_3=$((c+a/b))
echo $operation_3

#5==> Compute Arthemetic operation 4

operation_4=$((a%b+c))
echo $operation_4

#6==> Store in a dictionary

declare -A dict
dict=(["operation_1"]="$operation_1" ["operation_2"]="$operation_2" ["operation_3"]="$operation_3" ["operation_4"]="$operation_4")
echo "dictionary:" ${dict[*]}

#7==> Dictionary to an array

arr=
arr=(${dict[*]})
echo "array:" ${arr[*]}

#8==> Sort the array in descending form

len=${#arr[*]}
for ((i=0; i<len; i++))
do
	for((j=0; j<len-i-1; j++))
	do
      
		if [ ${arr[j]} -lt ${arr[$((j+1))]} ]
		then
			temp=${arr[j]}
			arr[$j]=${arr[$((j+1))]}  
			arr[$((j+1))]=$temp
		fi
	done
done
echo "In Descending form:" ${arr[*]}

#uc9==> Sort the array in ascending form

len=${#arr[*]}
for ((i=0; i<len; i++))
do
	for((j=0; j<len-i-1; j++))
	do
      
		if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
		then
			temp=${arr[j]}
			arr[$j]=${arr[$((j+1))]}  
			arr[$((j+1))]=$temp
		fi
	done
done
echo "In Ascending form:" ${arr[*]}
#Factorial of a number

echo "Enter the number for Factorial"
read num

arr=
ans=1
for ((i=1; i<=$num; i++))
do
	arr=(${i})
	ans=$((ans*arr))
done
echo "Factorial of the $num is : $ans"
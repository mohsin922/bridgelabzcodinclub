#Powers of 2 

echo "Enter the number for required power of 2"
read num

for ((i=1; i<=$num; i++))
do
	ans=$((2**i))
	echo $ans
done
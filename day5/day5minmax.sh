#Max and Min of random three digit numbers

max=0
min=1000

for ((i=0; i<5; i++))
do
	random_3_digit_no=$((RANDOM%900+100))
	echo $random_3_digit_no
	if [ $random_3_digit_no -gt $max ]
	then
		max=$random_3_digit_no
	fi

	if [ $random_3_digit_no -lt $min ]
	then
		min=$random_3_digit_no
	fi
done

echo "Maximum random three digit number : $max"
echo "Minimum random three digit number : $min"
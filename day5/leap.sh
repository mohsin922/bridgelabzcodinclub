#Check Leap year or not 

echo "Enter the year"
read year

divisible_by_400=$((year % 400))

divisible_by_100=$((year % 100))

divisible_by_4=$((year % 4))

if (( $divisible_by_400 == 0  || $divisible_by_100 != 0  &&  $divisible_by_4 == 0 ))
then
	echo "$year is a leap year"
else
	echo "$year is not a leap year "
fi
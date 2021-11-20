#UC ==> Assume wage is 20 per hour and 8 hours as full time

wage_per_hour=20
full_day_hour=8
random=$((RANDOM%2))

if [[ $random == 0 ]]
then
	echo "Employee is present"
	amount_paid=$((wage_per_hour*full_day_hour))
	echo "Total amount for the day = $amount_paid"
else
	echo "Employee is Absent"
	amount_paid=0
	echo "Total amount for a day = $amount_paid"
fi
#UC3==> Full time and Part time wages

wage_per_hour=20
full_day_hour=8
part_day_hour=4

random=$((RANDOM%2))

if [[ $random == 0 ]]
then
	echo "Employee is present Full time"
	amount_paid=$((wage_per_hour*full_day_hour))
	echo "Total amount for a day = $amount_paid"
else
	echo "Employee is present Part time"
	amount_paid=$((wage_per_hour*part_day_hour))
	echo "Total amount for a day = $amount_paid"
fi
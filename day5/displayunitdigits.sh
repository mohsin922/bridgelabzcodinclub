#Position of the digit 

echo "Enter a number (1,10,100,etc) upto 10000000"
read num

if [ $num == 1 ]
then
	echo "Unit"
elif [ $num == 10 ]
then
	echo "Ten"
elif [ $num == 100 ]
then
	echo "Hundred"
elif [ $num == 1000 ]
then
	echo "Thousand"
elif [ $num == 10000 ]
then
	echo "Ten Thousand"
elif [ $num == 100000 ]
then
	echo "Lakh"
elif [ $num == 1000000 ]
then
	echo "Ten Lakh"
elif [ $num == 10000000 ]
then 
	echo "Crore"
else
	echo "Out of range"
fi
#Two Random dice summation

dice_1=$((RANDOM%6+1))
echo "dice1" $dice_1
dice_2=$((RANDOM%6+1))
echo "dice2" $dice_2

sumOfDice=$((dice_1+dice_2))
echo "sum of dice_1 and dice_2:" $sumOfDice
echo
#4
sum=0
for ((i=0; i<=5 ;i++))
do
	dice_3=$((RANDOM%90+10))
	echo "Two digit random number:" $dice_3
	sum=$((dice_3+sum))
done
echo "sum of two digit random numbers" $sum
average=$((sum/5))
echo "average of two digit random numbers " $average

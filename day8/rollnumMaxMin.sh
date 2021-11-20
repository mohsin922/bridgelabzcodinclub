#Die simulator for finding the number which occured 10 times 

declare -A dict
dict=([1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0)

while true
do
	random=$((RANDOM%6+1))
	echo $random
	dict[$random]=${dict[$random]}+1
	if ((${dict[$random]} == 10)) 
	then
		echo "$random is the winner"
		break  
	fi
done
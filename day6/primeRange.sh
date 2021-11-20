#Prime numbers in a range between m and n

echo "Enter the starting number of the range"
read m
echo "Enter the last number of the range"
read n


for i in $(seq $m $n)
do
    ans=0
    for j in $(seq 2 $((i - 1)))
    do 
        if [ $((i % j)) -eq 0 ]
        then
            ans=1
            break
        fi
    done
    if [ $ans -eq 0 ]
    then
    echo $i
    fi
done
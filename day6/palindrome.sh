#Check the two numbers are palindromes or not!

echo "Enter the two numbers"
read a b
rem=0
reverse=0
function palindromes() {

    a=$1
    b=$2
    while [ $a -gt 0 ]
    do
        rem=$((a%10))
        reverse=$(((reverse*10)+rem))
        a=$((a/10))
    done

    if [ $b -eq $reverse ]
    then
        echo "The entered 2 numbers are palindromes"
    else
        echo "The entered 2 numbers are not palindromes"
    fi
}

palindromes $a $b
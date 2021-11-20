for item in `ls *.pdf`
do
    nameOfsubFolder=`echo $item | awk -F. '{ print $2 }'`
    nameOfFolder=`echo $item | awk -F. '{ print $1 }'`
    if [ -d $nameOfFolder ]
    then
        echo "Inside If Condition"
        rm -rf $nameOfFolder
    fi
    mkdir -p $nameOfFolder/$nameOfsubFolder
    mv $item $nameOfFolder/$nameOfsubFolder
done

for item in `ls *.txt`
do
     fileNameWithoutExtension=`echo $item | awk -F. '{ print $1 }'`
     if [ -d $fileNameWithoutExtension ]
     then
         echo "Inside If Condition"
         rm -rf $fileNameWithoutExtension
     fi
     mkdir $fileNameWithoutExtension
     cp -r $item $fileNameWithoutExtension
done
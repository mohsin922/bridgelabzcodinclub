#Unit conversion from Fahrenheit to Celsius

echo "1.Celsius to Fahrenheit 2.Fahrenheit to Celsius"
read input
echo "Enter degrees"
read degrees

case $input in
	1)
		function degF() {

			if [[ $1 -gt 32 && $1 -lt 212 ]]
			then
				degreeF=$((($1 * 9/5) + 32))
				echo "$1 degree Celsius is = $degreeF degree Fahrenheit"
			elif [[ $1 -lt 32 ]]
			then
				echo "Please enter degree above freezing point"
			elif [[ $1 -gt 212 ]]
			then
				echo "Please enter degree below boiling point"
			fi	
		}

		degF $degrees
		;;
	2)
		function degC() {

			if [[ $1 -gt 0 && $1 -lt 100 ]]
			then
				degreeC=$((($1 - 32) * 5/9))
				echo "$1 degree Fahrenheit is = $degreeC degree Celsius"
			elif [[ $1 -lt 0 ]]
			then
				echo "Please enter degree above freezing point"
			elif [[ $1 -gt 100 ]]
			then
				echo "Please enter degree below boiling point"
			fi	
		}

		degC $degrees
		;;
	*)
		echo "Enter a valid input"
		;;
esac
convert_temprature(){
	case $unit in

		C|c)
			fahrenheit=$(echo "scale=2; $temp*9/5+32" | bc )
			kelvin=$(echo "scale=2; $temp+273" | bc ) 
			echo "$temp°C=$fahrenheit°F=$kelvin K"		
			;;
		F|f)
			celsius=$(echo "scale=2; ($temp-32)*5/9" | bc)
			kelvin=$(echo "scale=2; ($temp-32)*5/9+273" | bc )
			echo "$temp°F=$celsius°C=$kelvin K"		
			;;
		K|k)
			celsius=$(echo "scale=2; $temp-273" | bc )
			fahrenheit=$(echo "scale=2; ($temp-273)*9/5+32" | bc )
			echo "$temp K=$celsius°C=$fahrenheit°F"		
			;;
		*)
			echo "invalid input.please enter a valid input"		
			;;
	esac
}
echo -n "Enter temprature : "
read temp
echo -n "Enter unit (C for celsius , F for fahrenheit, K for kelvin) :"
read unit

convert_temprature



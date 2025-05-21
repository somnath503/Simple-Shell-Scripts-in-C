factorial() {
	if [ "$1" -le 1 ]; then
		echo 1
	else
		result=$(($1*$(factorial $(($1-1)))))
	       echo $result
	fi
}
number=$1
echo "Factorial of $number is : $(factorial $number)"



fibonacci() {
	n1=$1
	n2=$2
	n=$3

	if [ $n -gt 0 ]; then
		n3=$((n1+n2))
		echo -n " $n3"
		fibonacci $n2 $n3 $((n-1))
	fi
}
echo "Enter the number of elements :"
read n
echo -n "Fibonacci series : 0 1"
fibonacci 0 1 $((n-2))
echo

echo "Enter first number:"
read n1
echo "Enter second number:"
read n2
Addition=$((n1+n2))
echo "Addition : $n1 + $n2 = $Addition"
Substraction=$((n1-n2))
echo "Substraction : $n1 - $n2 = $Substraction"
Multiplication=$((n1*n2))
echo "Multiplication : $n1 * $n2 =$Multiplication"
if [ $n2 -ne 0 ]; then
	division=$(echo "$n1/$n2" | bc)
	echo "Division :$n1/$n2 = $division"
else
	echo "Division by zero not allowed"
fi

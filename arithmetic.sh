echo -n "Enter the first term (a) :"
read first_term
echo -n "Enter the difference (d) : "
read common_difference
echo -n "Enter the number of terms (n) : "
read num_terms
current_term=$first_term
sum=0
echo "The terms of the arithmetic series are : "

for  (( i=1;i<=num_terms;i++))
do
        echo "$current_term"
        sum=$(echo "$sum + $current_term" | bc )
        current_term=$(echo "$current_term+$common_difference" | bc )
done
echo "The sum of the arithmetic series is : $sum"


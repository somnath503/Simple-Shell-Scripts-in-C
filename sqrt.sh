sqrt() {
    num=$1
    x=1
    while (( x * x <= num ));
    do
        ((x++))
    done
    echo $((x - 1))
}
echo "Enter a number:"
read num
result=$(sqrt $num)
echo "The integer part of the square root of $num is $result."


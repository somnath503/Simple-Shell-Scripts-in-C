echo "Enter first no. :"
read n1
echo "Enter second no. :"
read n2
echo "Enter third no. :"
read n3
if [ $n1 -ge $n2 ] && [ $n1 -ge $n3 ]; then 
	max=$n1
elif [ $n2 -ge $n1 ] && [ $n2 -ge $n3 ]; then
	max=$n2
else 
	max=$n3
fi
echo "Maxium value among three numbers is :  $max "

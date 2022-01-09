read -p "enter first value" a
read -p "enter first value" b
read -p "enter first value" c
output=$(($a+$b*$c))
echo " First Answer is : $output"
echo "second Answer"
output1=$(($a*$b+$c))
echo " second Answer is : $output1"
echo "Third answer"
output2=$(($c+$a/$b))
echo " Third Answer is : $output2"
echo "fourth Answer"
output3=$(($a%$b+$c))
echo " second Answer is : $output3"



Dictionary()
{
output=$(($1+$2*$3))
echo "The Output of a+b*c=$output"
output1=$(($1*$2+$3))
echo "The Output of a*b+c=$output1"
output2=$(($3+$1/$2))
echo "The Output of c+a/b=$output2"
output3=$(($1%$2+$3))
echo "The Output of a%b+c=$output3"

DictionaryList=($output $output1 $output2 output3)
echo "Results in a Dictionary :"
 echo ${DictionaryList[@]}

for((i=0;i<5;i++))
do 
for((j=0;j<5-i-1;j++))
do
	if[[${DictionaryList[j]} -gt ${DictionaryList[$(j+1))]}]]
	then
	temp=${DictionaryList[j]}
	DictionaryList[$j]=${Dictionaryist[$((j+1))]}
	DictionaryList[$((j+1))]=$temp
	fi
done
done
echo "Array in sorted order:"
echo ${DictionaryList[*]}

for((i=0;i<5;i++))
do 
for((j=0;j<5-i-1;j++))
do
	if[[${DictionaryList[j]} -lt ${DictionaryList[$(j+1))]}]]
	then
	temp=${DictionaryList[j]}
	DictionaryList[$j]=${Dictionaryist[$((j+1))]}
	Dictionaryist[$((j+1))]=$temp
	fi
done
done
echo "Array in Descending order:"
echo ${DictionaryList[*]}
}
read -p "Enter first value :" a
read -p "Enter second value :" b
read -p "Enter third value :" c
Dictionary $a $b $c

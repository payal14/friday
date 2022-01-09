for (( i=0 ; i < ${#numbers[@]}; i++ )) 
do
    for (( j=0 ; j < ${#numbers[@]}; j++ )) 
    do
      if [[ ${numbers[$j]} -lt  ${numbers[$i]} ]]
      then
        tmp=${numbers[$i]}
        numbers[$i]=${numbers[$j]}
        numbers[$j]=${tmp}
      fi
    done
done

for n in "${numbers[@]}"
do
    echo "$n"
done
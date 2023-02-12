#                             Online Bash Shell.
#                 Code, Compile, Run and Debug Bash script online.
# Write your code in this editor and press "Run" button to execute it.


read -p "Input calculation operand: " operand
read -p "Input number1: " number1

if [ $operand != '!' ]
then
  read -p "Input number2: " number2
  fi

if [ $operand == '!' ]
then
  result=1
  for (( i=1; i<=$number1; i++ ))
  do
    result=$(( $result * $i ))
  done
  echo "Result: $result"
elif [ $operand == '+' ]
then
  result=$(( $number1 + $number2 ))
  echo "Result: $result"
elif [ $operand == '-' ]
then
  result=$(( $number1 - $number2 ))
  echo "Result: $result"
elif [ $operand == 'x' ]
then
  result=$(( $number1 * $number2 ))
  echo "Result: $result"
elif [ $operand == '/' ]
then
  result=$(( $number1 / $number2 ))
  echo "Result: $result"
elif [ $operand == '%' ]
then
  result=$(( $number1 % $number2 ))
  echo "Result: $result"
else
  echo "Invalid operand"
fi
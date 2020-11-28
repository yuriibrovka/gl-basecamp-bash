#!/bin/bash
#set -x
subtraction_float() {
first=$(echo $var1 | cut -d'.' -f1)
second=$(echo $var1 | cut -d'.' -f2)
first2=$(echo $var2 | cut -d'.' -f1)
second2=$(echo $var2 | cut -d'.' -f2)
if [[ $var1 != @[.] && "$var2" =~ [.] ]]; then
      echo "$((( $first - $first2 ) - 1 ))"."$(( 10 - $second2 ))"
elif  [[ "$var1" =~ [.] && $var2 != @[.] ]]; then
      echo "$(expr $first - $first2)"."$second"
elif [[ $first > $first2 && $second > $second2 ]]; then
     echo "$(expr $first - $first2)"."$(expr $second - $second2)"
elif (($first > $first2 && $second2 > $second)); then
     echo "$((( $first - $first2 ) - 1 ))"."$(( 10 - ( $second2 - $second ) ))"
elif (($first > $first2 && $second == $second2)); then
      echo "$(expr $first - $first2)"
elif (($first < $first2)); then
     echo "It doesn't works with negativ number"
fi
}

subtraction() {
first=$(echo $var1 | cut -d'.' -f1)
second=$(echo $var2 | cut -d'.' -f2)
echo "$(expr $first - $second)";
}
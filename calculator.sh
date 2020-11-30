#!/usr/bin/env bash
source addition.sh
source subtraction.sh
source multiplication.sh
source division.sh
var1=$1
var2=$3
if [[ "$var1" =~ [a-zA-Z] || "$var2" =~ [a-zA-Z] ]]; then
    echo "Please enter the number"
    exit 128   
else
  case $2 in
  "+") if [[ "$var1" =~ [.] || "$var2" =~ [.] ]]; then
          addition_float
       else
          addition
       fi;;
  "-") if [[ "$var1" =~ [.] || "$var2" =~ [.] ]]; then
          subtraction_float
       else
          subtraction
       fi;;
  "x") if [[ "$var1" =~ [.] || "$var2" =~ [.] ]]; then
          multiplication_float
       else
          multiplication
       fi;;
  "/") if [[ "$var2" = 0 || "$var2" = 0.0 ]]; then
         echo "error: delimiter b3 zero"
       else
         division
       fi;;
  *) echo "command is unknown!"
  esac
  echo -e "\nSuccess with code" "$?"
fi

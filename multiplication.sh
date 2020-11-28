#!/bin/bash
multiplication_float() {
first=$(echo "${var1//.}")
second=$(echo "${var2//.}")
result="$(expr $first \* $second)"
if [[ $first == 0* ]]; then
    printf %.3f "${result}e-2"
else
    printf %.3f "${result}e-1"
fi
}

multiplication() {
result="$(expr $var1 \* $var2)"
echo $result
}
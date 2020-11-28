#!/bin/bash
division() {
first=$(echo "${var1//.}")
second=$(echo "${var2//.}")
result="$((10**3 * $first/$second))"
if [[ $first == 0* ]]; then
    printf %.3f "${result}e-4"
elif  [[ "$var1" =~ [.] && $var2 =~ [.] ]]; then
    printf %.3f "${result}e-3"
elif  [[ "$var1" =~ [.] && $var2 != @[.] ]]; then
    printf %.3f "${result}e-4"  
elif  [[ "$var1" != @[.] && $var2 =~ [.] ]]; then
    printf %.3f "${result}e-2" 
else
    printf %.3f "${result}e-3"
fi
}


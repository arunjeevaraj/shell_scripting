#!/usr/bin/bash
#

echo $(date)
today=$(date +%y%m%d)
## redirecting the output to the file.
ls /var/log/auth.log* -la > log.$today

# integers
var1=$[1 + 10]
var3=$[$var1 + 1]
echo $var3


# how to make use of floating points ?

## set the scaling to two places. and pass the maths to the bc.
#bc is bash calculator. 
var2=$(echo "scale=2; 3.44/4" | bc)
echo "the results from bc : $var2"

# passing the variables in shell to bc.
var5=100
var6=65
var7=$(echo "scale=2; $var5 / $var2" | bc)
echo $var7

# using the interactive mode.
# tells the exit character when you enter the interactive mode. << followed by EOF.
var8=$(bc << EOF
scale=4
a1 = ($var5 * $var6)
b1 = ($var**2)
a1+b1
EOF
)

echo "The final answer is $var8"


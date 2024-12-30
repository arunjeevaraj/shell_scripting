#!/bin/bash


#  printenv --> gives a list of the the env_variables loaded into the OS.

# no space between = when declaring the variables.
var1="funbags are soft"

# $ fetches whats stored in the variable.
echo $var1

# a way to pass a cmd to the terminal.
var=`date`
echo $var

# a better way to do the above is 
var=$(date)
echo $var


# variables are local to a subshell.. so new spawned subshell cant have access to the variable declared in the new shell
#

# how to access the variables in the parent shell.
# these commands are run on a new subshell
#


echo "path : $(PATH)"

# Need to make the PATH global, one way is by using export
# export var="data" in the parent shell
# then var will be available in the subshells and their subshells

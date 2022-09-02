#!/bin/bash

read -p "Enter your name: " NAME
read -p "Enter your age: " AGE
read -p "Enter your average life expectancy: " ALE

if [[ $AGE -lt 18 ]]
then
let fark=18-$AGE
echo "At least $fark years to become a worker"
elif [[ $AGE -ge 18 || $AGE -lt 65 ]]
then
let emekli=65-$AGE
echo echo "$emekli years to retire"
elif [[ $AGE -ge 65 ]]
then
let olum=$ALE-$AGE
echo "$olum years to die"
else
echo "!!! Already died !!!"
fi

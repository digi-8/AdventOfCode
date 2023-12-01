#!/bin/sh

input="./input2.txt"

# This is one of my worst moments xD
sed -i -e 's/one/one1one/g' $input
sed -i -e 's/two/two2two/g' $input
sed -i -e 's/three/three3three/g' $input
sed -i -e 's/four/four4four/g' $input
sed -i -e 's/five/five5five/g' $input
sed -i -e 's/six/six6six/g' $input
sed -i -e 's/seven/seven7seven/g' $input
sed -i -e 's/eight/eight8eight/g' $input
sed -i -e 's/nine/nine9nine/g' $input

array=()

while read line; do
  num=$(echo "$line" | grep -o -E '[0-9]+')
  array+=( $(echo ${num:0:1}${num: -1}) )
done <$input

sum=0

for i in ${array[@]}
do
  sum=$(expr $sum + $i)
done

echo $sum